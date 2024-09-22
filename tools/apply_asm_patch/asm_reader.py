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

FindTargetAddressStatus = Enum('FindTargetAddressStatus', ['NotFound', 'Skip', 'Write', 'CFile', 'Misaligned', 'OutOfRange'])

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
        if found_address >= len(section_symbols) or found_address == 0:
            return None
        elif section_symbols[found_address].address == search_address:
            return section_symbols[found_address]
        else:
            return section_symbols[found_address - 1]

@dataclass
class FindTargetAddressResult:
    find_status: FindTargetAddressStatus
    write_index: int | None
    target_addresses: dict[Region, int]
    end_address: int | None


@dataclass
class FindAddressLocationResult:
    target_preceding_symbol: SymbolDetails
    target_symbol_path: str
    target_file_lines: list[str]
    find_target_address_result: FindTargetAddressResult

class XmapReader:
    xmaps: dict[Region, Xmap]
    orig_region: Region
    asm_files: dict[str, str]

    def __init__(self, orig_region: Region, use_local_xmap: bool):
        self.xmaps = {}
        self.orig_region = orig_region
        self.asm_files = find_asm_files()

        for region in Region:
            self.xmaps[region] = read_xmap(region, use_local_xmap)

    def find_target_preceding_symbol(self, current_section: str, instruction_address: int) -> tuple[SymbolDetails, dict[Region, int]]:
        # Find the symbol preceding the instruction's address.
        # Step through the ASM starting at that symbol and count the size of each instruction to find where to insert the instruction.
        target_preceding_symbol = self.xmaps[self.orig_region].find_preceding_symbol(current_section, instruction_address)
        if target_preceding_symbol is None:
            return None, {}

        starting_addresses: dict[Region, int] = { self.orig_region: target_preceding_symbol.address }
        for region in Region:
            if region not in starting_addresses:
                region_symbol = self.xmaps[region].get_symbol_by_name(target_preceding_symbol.name)
                if region_symbol:
                    starting_addresses[region] = self.xmaps[region].get_symbol_by_name(target_preceding_symbol.name).address
                else:
                    print(f'Region {region} does not have preceding symbol {target_preceding_symbol.name}')
        return target_preceding_symbol, starting_addresses

    def find_address_location(self, current_section: str, instruction_address: int, instruction: str | None = None) -> FindAddressLocationResult:
        target_preceding_symbol, starting_addresses = self.find_target_preceding_symbol(current_section, instruction_address)
        if target_preceding_symbol is None:
            return FindAddressLocationResult(None, None, [], FindTargetAddressResult(FindTargetAddressStatus.OutOfRange, None, {}, None))

        target_symbol_path = target_preceding_symbol.file[:-2]
        if target_symbol_path not in self.asm_files:
            return FindAddressLocationResult(target_preceding_symbol, target_symbol_path, [], FindTargetAddressResult(FindTargetAddressStatus.CFile, None, {}, None))

        target_symbol_path = self.asm_files[target_symbol_path]
        with open(target_symbol_path, 'r') as target_symbol_file:
            target_file_lines = target_symbol_file.readlines()

        asm_tracker = AsmTracker(starting_addresses, self.orig_region, target_file_lines)
        find_target_address_result = asm_tracker.find_target_address(target_preceding_symbol, instruction_address, instruction)
        return FindAddressLocationResult(target_preceding_symbol, target_symbol_path, target_file_lines, find_target_address_result)

@dataclass
class RegionContainer:
    active_regions: list[Region] = field(default_factory=list)
    past_regions: list[Region] = field(default_factory=list)

# Tracks the byte offset past a symbol by parsing and accumulating the data size of each ASM line.
class AsmTracker:
    current_addresses: dict[Region, int]
    target_region: Region
    target_file_lines: list[str]

    def __init__(self, current_addresses: dict[Region, int], target_region: Region, target_file_lines: list[str]):
        self.current_addresses = current_addresses
        self.current_regions: list[RegionContainer] = []
        self.target_region = target_region
        self.target_file_lines = target_file_lines

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

        def handle_align(align_size: int):
            line_size = 0
            address_align = self.current_addresses[self.target_region] % align_size
            if address_align > 0:
                line_size = align_size - address_align
            return line_size

        if line_strip.startswith('.string'):
            line_size = len(line_strip.split('"')[1].replace('\\0', '0').replace('\\n', 'n')) + 1
        elif line_strip.startswith('.byte'):
            line_size = line_strip.count(',') + 1
        elif line_strip.startswith('.hword') or line_strip.startswith('.short'):
            line_size = 2 * (line_strip.count(',') + 1)
        elif '.word' in line_strip:
            line_size = 4 * (line_strip.count(',') + 1)
        elif line_strip.startswith('.align 2'):
            line_size = handle_align(2)
        elif line_strip.startswith('.align 4'):
            line_size = handle_align(4)
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

    def find_target_address(self, target_preceding_symbol: SymbolDetails, instruction_address: int, instruction: str | None = None) -> FindTargetAddressResult:
        found_target_symbol = False
        find_status = FindTargetAddressStatus.NotFound
        target_addresses: dict[Region, int] = {}
        write_index = None
        end_address = None
        for i, target_line in enumerate(self.target_file_lines):
            if found_target_symbol:
                # Even if the current address is already equal to the target symbol address,
                # delay writing until the next line that is actually written to ASM (excluding symbol/function definitions and blank lines).
                prev_addresses = self.current_addresses.copy()

                if instruction is not None and instruction.endswith(':') and target_line.startswith(instruction):
                    target_addresses = prev_addresses
                    find_status = FindTargetAddressStatus.Skip
                    break

                if self.read_line(target_line):
                    region_address = prev_addresses[self.target_region]
                    if region_address == instruction_address:
                        write_index = i
                        end_address = region_address
                        target_addresses = prev_addresses
                        find_status = FindTargetAddressStatus.Write
                        break
                    elif region_address > instruction_address:
                        write_index = i - 1
                        end_address = region_address
                        misalign_amount = region_address - instruction_address
                        target_addresses = {region: address - misalign_amount for region, address in prev_addresses.items()}
                        find_status = FindTargetAddressStatus.Misaligned
                        break
            elif target_line.startswith(f'{target_preceding_symbol.name}:'):
                found_target_symbol = True

        if len(self.current_regions) > 0:
            target_addresses = {region: address for region, address in target_addresses.items() if region in self.current_regions[-1].active_regions}

        return FindTargetAddressResult(find_status, write_index, target_addresses, end_address)

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

def print_addresses(addresses: dict[Region, int]):
    if len(addresses) > 0:
        print_regions = []
        for region, address in addresses.items():
            print_regions.append(f'{region.name}: {format_hex(address)}')
        print(', '.join(print_regions))