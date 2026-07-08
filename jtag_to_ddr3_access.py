#!/usr/bin/env python3
#
# DDR3 memory access test script
# 

# source setup_vitis_env.sh in order to set up the environment variables for Vitis and Vivado, which includes adding the necessary paths to the Python environment.
# For example `source /opt/Xilinx/2025.2/Vitis/cli/examples/customer_python_utils/setup_vitis_env.sh'
import xsdb 
import random

def connect_jtag2axi():
    s = xsdb.start_debug_session()
    s.connect()  # local hw_server on :3121

    # List debug targets and select JTAG2AXI by name (stable across sessions)
    s.targets("--set", filter="name =~ JTAG2AXI")
    return s

# Read list of bytes
def readList(s, addr: int, size: int = 1) -> list:
    # Returns list of bytes
    return s.mrd(addr, "-v", size=size, word_size=1)

# Write listof bytes
def writeList(s, addr: int, value: list):
    s.mwr(addr, size=len(value), words=value, word_size=1)

def main(memSizeToTest: int = 256):
    session = connect_jtag2axi()

    DDR_BASE = 0x80000000

    # adjust memSizeToTest so memSizeToTest % 4 == 0
    memSizeToTest = memSizeToTest - (memSizeToTest % 4)
    wList = []
    # generate a list of random bytes to write to DDR3 memory
    for _ in range(memSizeToTest):
        wList.append(random.randint(0, 255))
    # Write the list of bytes to DDR3 memory and read it back
    writeList(session, DDR_BASE, wList)
    rdList = readList(session, DDR_BASE, len(wList))
    # read back again to check for any transient errors
    rdList2 = readList(session, DDR_BASE, len(wList))
    if( rdList2 == rdList):
        print("Read data is consistent")
    else:
        print("Read data is not consistent, possible transient error")

    # compare
    if( wList == rdList):
        print("Read data matched written data")
    else:
        for i in range(len(wList)):
            if wList[i] != rdList[i]:
                print(f"Mismatch at index {i}: written 0x{wList[i]:02X}, read 0x{rdList[i]:02X}, xor 0x{wList[i] ^ rdList[i]:02X}")
    
if __name__ == "__main__":
    main()

