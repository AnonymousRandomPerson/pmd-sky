import argparse
from collections import namedtuple
import os

from asm_reader import FindTargetAddressStatus, Region, XmapReader, format_hex, print_addresses

DataSize = namedtuple('DataSize', ['keyword', 'size'])
DATA_SIZES = [
    DataSize('.byte', 1),
    DataSize('.hword', 2),
    DataSize('.word', 4)
]

def insert_instruction_in_data(instruction: str, target_address: int, lines: list[str], line_index: int, end_address: int):
    # If the target address is within a line of byte data, insert it within the data.
    target_line = lines[line_index]
    target_to_end_address_dist = end_address - target_address
    data_size = None
    for ds in DATA_SIZES:
        if ds.keyword in target_line:
            data_size = ds
            break

    if data_size is None or target_to_end_address_dist % data_size.size != 0:
        print(f'Could not insert instruction {instruction} (address {target_address}) in the middle of line {target_line}')
        return False

    target_num_elements_from_end = target_to_end_address_dist // data_size.size
    if ':' in instruction:
        comma_split = target_line.split(',')
        split_index = len(comma_split) - target_num_elements_from_end
        orig_line = ','.join(comma_split[:split_index]) + '\n'
        new_line = '\t' + data_size.keyword + ','.join(comma_split[split_index:])
        lines[line_index] = orig_line
        lines.insert(line_index + 1, new_line)
        lines.insert(line_index + 1, instruction + '\n')
        return True
    else:
        print('Found non-label instruction in data split', instruction)
        return False


def use_asm_patch(armips_output_path: str, patch_region: Region, use_local_xmap: bool):
    print(f'Using armips file {armips_output_path}')

    xmap_reader = XmapReader(patch_region, use_local_xmap)

    with open(armips_output_path, 'r', encoding='utf-8-sig') as armips_output_file:
        current_section = 'main'
        source_files: dict[str, list[str]] = {}
        while True:
            armips_line = armips_output_file.readline()
            if armips_line == '':
                break

            if armips_line.startswith(';') or armips_line.startswith(';') or armips_line.isspace():
                continue

            comma_split = armips_line.rsplit(';', 1)
            line_without_comment = comma_split[0].rstrip()
            address_instruction_split = line_without_comment.split(' ', 1)
            instruction_address_string = address_instruction_split[0]

            instruction = address_instruction_split[1]

            # Look for the armips .open and .close operators to know what section the ASM is at.
            if instruction.startswith('.open'):
                bin_extension = instruction.find('.bin')
                if bin_extension >= 0:
                    current_section = instruction[instruction.rfind('/', 0, bin_extension) + 1 : bin_extension]
                    if current_section == 'arm9':
                        current_section = 'main'
                    else:
                        current_section = current_section.replace('overlay_00', 'OVY_')
            elif instruction == '.close':
                current_section = 'main'

            if instruction.startswith('.') or not current_section:
                continue

            instruction_address = int(f'0x{instruction_address_string}', 16)
            if instruction_address == 0:
                continue

            # The armips temp file doesn't preserve all ASM lines properly, so check the original file for the proper ASM.
            file_path_split = comma_split[1].split(' line ')
            line_file_path = file_path_split[0].lstrip()
            line_number = int(file_path_split[1])
            if line_file_path in source_files:
                source_file_lines = source_files[line_file_path]
            else:
                with open(line_file_path, 'r') as source_file:
                    source_file_lines = source_file.readlines()
                    source_files[line_file_path] = source_file_lines
            orig_line = source_file_lines[line_number - 1]
            if '.definelabel' not in orig_line:
                instruction = orig_line.rstrip()

            instruction = instruction.replace('@', '')

            print_verbose(f'Reading instruction {instruction} at address {format_hex(instruction_address)}')

            result = xmap_reader.find_address_location(current_section, instruction_address, instruction)
            target_preceding_symbol = result.target_preceding_symbol
            target_symbol_path = result.target_symbol_path
            target_file_lines = result.target_file_lines
            find_status = result.find_target_address_result.find_status
            write_index = result.find_target_address_result.write_index
            target_addresses = result.find_target_address_result.target_addresses
            end_address = result.find_target_address_result.end_address

            if find_status == FindTargetAddressStatus.CFile:
                print(f'Instruction {instruction} (address {format_hex(instruction_address)}, preceding symbol {target_preceding_symbol.name}) is in a C file and cannot be applied.')
                continue

            if target_preceding_symbol is None:
                print(f'Could not find anchor for instruction {instruction} (address {format_hex(instruction_address)}).')
            else:
                print_verbose(f'Anchoring address {format_hex(instruction_address)} on preceding symbol {target_preceding_symbol.name}')

                write_target_file = False
                if find_status == FindTargetAddressStatus.Write:
                    write_target_file = True
                    if instruction.endswith(':'):
                        target_file_lines.insert(write_index, instruction + '\n')
                    else:
                        target_file_lines[write_index] = instruction + '\n'
                elif find_status == FindTargetAddressStatus.Misaligned:
                    print_verbose(f'Address {format_hex(instruction_address)} is misaligned. Inserting instruction within data.')
                    write_target_file = insert_instruction_in_data(instruction, instruction_address, target_file_lines, write_index, end_address)

                print_info = f'preceding symbol {target_preceding_symbol.name} at address {format_hex(target_preceding_symbol.address)}'
                if write_target_file:
                    with open(target_symbol_path, 'w') as target_symbol_file:
                        target_symbol_file.writelines(target_file_lines)
                    print_verbose(f'Wrote instruction "{instruction}" to address {format_hex(target_addresses[patch_region])} ({print_info}).')
                elif find_status == FindTargetAddressStatus.Skip:
                    print_verbose(f'Skipped instruction "{instruction}" at address {format_hex(target_addresses[patch_region])} ({print_info}).')
                else:
                    print(f'Could not find address to write instruction {instruction} ({print_info}).')

            print_addresses(target_addresses)

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

if not os.path.exists(armips_output_file):
    raise FileNotFoundError(f'File {armips_output_file} not found.')


if os.path.isdir(armips_output_file):
    for file in os.listdir(armips_output_file):
        use_asm_patch(file, patch_region, use_local_xmap)
else:
    use_asm_patch(armips_output_file, patch_region, use_local_xmap)

