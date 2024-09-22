import argparse
import os
from asm_reader import FindTargetAddressStatus, Region, XmapReader, print_addresses

parser = argparse.ArgumentParser(
    prog='Find region addresses',
    description='Given an address in a certain region, finds the corresponding address in the other regions'
)
parser.add_argument('-a', '--address', required=True, help='The address to find in the other regions, in hex format.')
parser.add_argument('-o', '--overlay', type=int, help='The overlay where the address is located, or blank to use the main ARM9 binary.')
parser.add_argument('-r', '--region', default='us', choices=[r.lower() for r in Region._member_names_], help='The game region (us, eu, jp) where the given address is from. Defaults to "us".')
parser.add_argument('-l', '--use-local-xmap', action='store_true', help='Use the local xMAP files instead of the remote ones.')

args = parser.parse_args()
address = int(args.address, 16)
overlay: int = args.overlay
region = Region[args.region.upper()]
use_local_xmap: bool = args.use_local_xmap


CONTAINING_FOLDER = 'apply_asm_patch'
if os.getcwd().endswith(CONTAINING_FOLDER):
    os.chdir(os.path.join('..', '..'))

if args.overlay is None:
    section = 'main'
else:
    section = f'OVY_{overlay:02d}'

xmap_reader = XmapReader(region, use_local_xmap)
result = xmap_reader.find_address_location(section, address)
find_status = result.find_target_address_result.find_status
target_addresses = result.find_target_address_result.target_addresses

if find_status == FindTargetAddressStatus.Write or find_status == FindTargetAddressStatus.Misaligned:
    print_addresses(target_addresses)
elif find_status == FindTargetAddressStatus.OutOfRange:
    print(f'Address {args.address} is out of range of {section}.')
elif find_status == FindTargetAddressStatus.CFile:
    print(f'Address {args.address} is in a C file and cannot be found.')
else:
    print(f'Could not find address {args.address}')
