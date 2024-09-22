import argparse
import os
import requests
import bisect
from dataclasses import dataclass, field
from enum import Enum
from collections import defaultdict

XMAP_BASE_URL = 'https://raw.githubusercontent.com/pret/pmd-sky/refs/heads/xmap'

Region = Enum('Region', ['US', 'EU', 'JP'])

REGION_MACROS = {
  'NORTH_AMERICA': Region.US,
  'EUROPE': Region.EU,
  'JAPAN': Region.JP,
}


@dataclass
class SymbolDetails:
    name: str
    address: int
    section: str
    file: str

class Xmap:
    symbols: dict[str, list[SymbolDetails]]
    symbol_dict: dict[str, SymbolDetails]

    def __init__(self):
        self.symbols = defaultdict(list)
        self.symbol_dict = {}

    def add_symbol(self, symbol: SymbolDetails):
        self.symbols[symbol.section].append(symbol)
        self.symbol_dict[symbol.name] = symbol

    def get_symbol_by_name(self, name: str):
        return self.symbol_dict[name]

    def find_preceding_symbol(self, section: str, search_address: int):
        section_symbols = self.symbols[section]
        found_address = bisect.bisect_left(section_symbols, search_address, key=lambda symbol: symbol.address)
        if section_symbols[found_address].address == search_address:
            return section_symbols[found_address]
        else:
            return section_symbols[found_address - 1]

@dataclass
class RegionContainer:
    active_regions: list[Region] = field(default_factory=list)
    past_regions: list[Region] = field(default_factory=list)

# Tracks the byte offset past a symbol by parsing and accumulating the data size of each ASM line.
class AsmTracker:
    current_addresses: dict[Region, int]
    target_region: Region

    def __init__(self, current_addresses: dict[Region, int], target_region: Region):
        self.current_addresses = current_addresses
        self.current_regions: list[RegionContainer] = []
        self.target_region = target_region

    def get_top_level_regions(self) -> list[Region]:
        if len(self.current_regions) <= 1:
            return []
        return self.current_regions[0].active_regions + self.current_regions[0].past_regions

    def read_line(self, line: str) -> bool:
        line_strip = line.lstrip()
        line_size = 0

        # Lines should not be counted if they are not in the current region.
        if line_strip.startswith('#if'):
            new_region = RegionContainer()
            self.current_regions.append(new_region)
            for region_name, region_key in REGION_MACROS.items():
                if f'ifdef {region_name}' in line_strip or f' defined({region_name})' in line_strip:
                    new_region.active_regions.append(region_key)
                elif f'ifndef {region_name}' in line_strip or f'!defined({region_name})' in line_strip:
                    new_region.active_regions.extend([region_key_2 for region_key_2 in REGION_MACROS.values() if region_key_2 != region_key and region_key_2 not in self.get_top_level_regions()])
        elif line_strip.startswith('#elif') or line_strip.startswith('#else'):
            current_region = self.current_regions[-1]
            current_region.past_regions.extend(current_region.active_regions)
            current_region.active_regions = []
            if line_strip.startswith('#else'):
                current_region.active_regions.extend([region_key for region_key in REGION_MACROS.values() if region_key not in current_region.past_regions and region_key not in self.get_top_level_regions()])
            else:
                for region_name, region_key in REGION_MACROS.items():
                    if f' defined({region_name})' in line_strip:
                        current_region.active_regions.append(region_key)
                    elif f'!defined({region_name})' in line_strip:
                        current_region.active_regions.extend([region_key_2 for region_key_2 in REGION_MACROS.values() if region_key_2 != region_key and region_key_2 not in current_region.past_regions and region_key_2 not in self.get_top_level_regions()])
        elif line_strip.startswith('#endif'):
            self.current_regions.pop()

        current_region = None
        if len(self.current_regions) > 0:
            current_region = self.current_regions[-1]

        if line_strip.startswith('.string'):
            line_size = len(line_strip.split('"')[1].replace('\\0', '0').replace('\\n', 'n')) + 1
        elif line_strip.startswith('.byte'):
            line_size = line_strip.count(',') + 1
        elif line_strip.startswith('.hword') or line_strip.startswith('.short'):
            line_size = 2 * (line_strip.count(',') + 1)
        elif '.word' in line_strip:
            line_size = 4 * (line_strip.count(',') + 1)
        elif line_strip.startswith('.align 4'):
            address_align = self.current_address % 4
            if address_align > 0:
                line_size = 4 - address_align
        elif not line.isspace() and ':' not in line and 'arm_func' not in line and not line.startswith('#'):
            line_size = 4

        target_region_incremented = False
        if line_size > 0:
            for region in self.current_addresses:
                if current_region is None or region in current_region.active_regions:
                    self.current_addresses[region] += line_size
                    if region == self.target_region:
                        target_region_incremented = True

        return target_region_incremented

def get_from_url(url: str) -> str:
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        raise Exception(f'Received error {response.status_code} from {url}')

ASM_DIR = 'asm'
def find_asm_files() -> dict[str, str]:
    asm_files: dict[str, str] = {}
    for file in os.listdir(ASM_DIR):
        if file.endswith('.s'):
            asm_files[file[:-2]] = os.path.join(ASM_DIR, file)
    return asm_files

SECTION_START = '# .'
def read_xmap(region: Region, use_local_xmap: bool) -> Xmap:
    if use_local_xmap:
        xmap_file = os.path.join('build', f'pmdsky.{region.name.lower()}', 'main.nef.xMAP')
        with open(xmap_file, 'r') as xmap_file:
            xmap_lines = xmap_file.readlines()
    else:
        # Use the remote xMAP over the local one, as the local one could be shifted if the user has made changes to the decomp.
        # Shifted addresses will break addressing of ASM patches.
        xmap_url = f'{XMAP_BASE_URL}/pmdsky{region.name.lower()}.xMAP'
        response = requests.get(xmap_url)
        if response.status_code == 200:
            xmap_lines = response.text.splitlines(keepends=True)
        else:
            raise Exception(f'Received error {response.status_code} from {xmap_url}')

    xmap = Xmap()

    NON_FUNCTION_SYMBOLS = set(['$', '.'])

    # Read symbols and their addresses from the xMAP file.
    current_section = None
    for line in xmap_lines:
        if line.startswith(SECTION_START):
            section_name = line[len(SECTION_START):].rstrip()
            if (section_name.startswith('OVY') or section_name == 'main') and not section_name.endswith('.bss'):
                current_section = section_name

        if current_section is not None and line.startswith('  ') and ('.text' in line or '.data' in line or '.bss' in line) and len(line) > 28 and line[28] not in NON_FUNCTION_SYMBOLS:
            symbol_split = line[28:-1].split('\t')
            symbol_name = symbol_split[0]
            symbol_address = int(line[2:10], 16)
            if '00000000' not in line or not symbol_name.startswith('$'):
                file_path = symbol_split[1][1:-2]
                xmap.add_symbol(SymbolDetails(symbol_name, symbol_address, current_section, file_path))

    return xmap

def format_hex(hex_number: int) -> str:
    return f'0x{format(hex_number, '02X')}'

def use_asm_patch(armips_output_path: str, patch_region: Region, use_local_xmap: bool):
    print(f'Using armips file {armips_output_path}')

    asm_files = find_asm_files()

    xmaps: dict[Region, Xmap] = {}
    for region in Region:
        xmaps[region] = read_xmap(region, use_local_xmap)

    with open(armips_output_path, 'r', encoding='utf-8-sig') as armips_output_file:
        current_section = None
        while True:
            armips_line = armips_output_file.readline()
            if armips_line == '':
                break

            if armips_line.startswith(';') or armips_line.startswith(';') or armips_line.isspace():
                continue

            line_without_comment = armips_line.split(';')[0].rstrip()
            address_instruction_split = line_without_comment.split(' ', 1)
            instruction_address_string = address_instruction_split[0]
            instruction = address_instruction_split[1]

            if instruction.startswith('.open'):
                bin_extension = instruction.find('.bin')
                if bin_extension >= 0:
                    current_section = instruction[instruction.rfind('/', 0, bin_extension) + 1 : bin_extension]
                    current_section = current_section.replace('overlay_00', 'OVY_')
            elif instruction == '.close':
                current_section = None

            if instruction.startswith('.') or not current_section:
                continue

            instruction_address = int(f'0x{instruction_address_string}', 16)
            if instruction_address == 0:
                continue

            # Find the symbol preceding the instruction's address.
            # Step through the ASM starting at that symbol and count the size of each instruction to find where to insert the instruction.
            target_preceding_symbol = xmaps[patch_region].find_preceding_symbol(current_section, instruction_address)
            starting_addresses: dict[Region, int] = { patch_region: target_preceding_symbol.address }
            for region in Region:
                if region not in starting_addresses:
                    region_symbol = xmaps[region].get_symbol_by_name(target_preceding_symbol.name)
                    if region_symbol:
                        starting_addresses[region] = xmaps[region].get_symbol_by_name(target_preceding_symbol.name).address
                    else:
                        print(f'Region {region} does not have preceding symbol {target_preceding_symbol.name}')

            target_symbol_path = target_preceding_symbol.file[:-2]
            if target_symbol_path not in asm_files:
                print(f'Instruction {instruction} (address {format_hex(instruction_address)}, preceding symbol {target_preceding_symbol.name}) is in a C file and cannot be applied.')
                continue
            target_symbol_path = asm_files[target_symbol_path]

            with open(target_symbol_path, 'r') as target_symbol_file:
                target_file_lines = target_symbol_file.readlines()

            found_target_symbol = False
            wrote_instruction_address = False
            skipped_instruction_address = False
            print_prev_addresses = None
            asm_tracker = AsmTracker(starting_addresses, patch_region)
            for i, target_line in enumerate(target_file_lines):
                if found_target_symbol:
                    # Even if the current address is already equal to the target symbol address,
                    # delay writing until the next line that is actually written to ASM (excluding symbol/function definitions and blank lines).
                    prev_addresses = asm_tracker.current_addresses.copy()

                    if instruction.endswith(':') and target_line.startswith(instruction):
                        print_prev_addresses = prev_addresses
                        skipped_instruction_address = True
                        break

                    if asm_tracker.read_line(target_line) and prev_addresses[patch_region] == instruction_address:
                        if instruction.endswith(':'):
                            target_file_lines.insert(i, instruction + '\n')
                        else:
                            target_file_lines[i] = instruction + '\n'
                        print_prev_addresses = prev_addresses
                        wrote_instruction_address = True
                        break
                elif target_line.startswith(f'{target_preceding_symbol.name}:'):
                    found_target_symbol = True

            print_info = f'preceding symbol {target_preceding_symbol.name} at address {format_hex(target_preceding_symbol.address)}'
            if wrote_instruction_address:
                with open(target_symbol_path, 'w') as target_symbol_file:
                    target_symbol_file.writelines(target_file_lines)
                print_verbose(f'Wrote instruction "{instruction}" to address {format_hex(print_prev_addresses[patch_region])} ({print_info}).')
            elif skipped_instruction_address:
                print_verbose(f'Skipped instruction "{instruction}" at address {format_hex(print_prev_addresses[patch_region])} ({print_info}).')
            else:
                print(f'Could not find address to write instruction {instruction} ({print_info}).')

            if print_prev_addresses:
                print_regions = []
                for region, address in print_prev_addresses.items():
                    print_regions.append(f'{region.name}: {format_hex(address)}')
                print_verbose(', '.join(print_regions))

    print(f'Finished writing armips file {armips_output_path}')

parser = argparse.ArgumentParser(
    prog='Apply ASM patch',
    description='Applies ASM patches to the decomp'
)
parser.add_argument('-f', '--armips-output-file', required=True, help='The file path of the temp file outputted from executing a patch via armips')
parser.add_argument('-r', '--patch-region', default='us', choices=[r.lower() for r in Region._member_names_], help='The game region (us, eu, jp) that the ASM patch is written in. Defaults to "us".')
parser.add_argument('-v', '--verbose', action='store_true', help='Whether to print verbose logging.')
parser.add_argument('-l', '--use-local-xmap', action='store_true', help='Use the local xMAP files instead of the remote ones.')

args = parser.parse_args()
armips_output_file: str = args.armips_output_file
patch_region: Region = Region[args.patch_region.upper()]
verbose: bool = args.verbose
use_local_xmap: str = args.use_local_xmap

CONTAINING_FOLDER = 'apply_asm_patch'
if os.getcwd().endswith(CONTAINING_FOLDER):
    os.chdir(os.path.join('..', '..'))

def print_verbose(text: str):
    if verbose:
        print(text)

def validate_xmap_file(xmap_file: str | None):
    if xmap_file:
        if not os.path.exists(xmap_file):
            raise FileNotFoundError(f'File {xmap_file} not found.')
        if not xmap_file.endswith('.xMAP'):
            raise ValueError(f'{xmap_file} is not a .xMAP file.')

if not os.path.exists(armips_output_file):
    raise FileNotFoundError(f'File {armips_output_file} not found.')


if os.path.isdir(armips_output_file):
    for file in os.listdir(armips_output_file):
        use_asm_patch(file, patch_region, use_local_xmap)
else:
    use_asm_patch(armips_output_file, patch_region, use_local_xmap)

