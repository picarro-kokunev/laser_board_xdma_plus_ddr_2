#!/usr/bin/env python3
#
# DDR3 memory access test script
# 

# source setup_vitis_env.sh in order to set up the environment variables for Vitis and Vivado, which includes adding the necessary paths to the Python environment.
# For example `source /opt/Xilinx/2025.2/Vitis/cli/examples/customer_python_utils/setup_vitis_env.sh'
import xsdb 
import random

class Jtag2Ddr3Access:
    DDR_BASE = 0x80000000    
    # Limit max word count going thru xsdb
    MAX_WR_WORD_CNT = 256
    def __init__(self):
        self.session = None

    # Connect to the JTAG2AXI target using the Xilinx XSDB API
    def connect(self):
        self.session = xsdb.start_debug_session()
        self.session.connect()  # local hw_server on :3121

        # List debug targets and select JTAG2AXI by name (stable across sessions)
        self.session.targets("--set", filter="name =~ JTAG2AXI")
        return self.session

    # Read list of 32 bit words 
    def readWordList(self, addr: int = DDR_BASE, size: int = 1) -> list:
        # Returns list of 32 bit words
        return self.session.mrd(addr, "-v", size=size, word_size=4)

    # Write list of 32 bit words
    def writeWordList(self, addr: int = DDR_BASE, value: list = [], size : int = -1):
        if( size == -1):
            size = len(value)
        if( size > self.MAX_WR_WORD_CNT):
            print(f"Warning: size {size} exceeds MAX_WR_WORD_CNT {self.MAX_WR_WORD_CNT}, truncating to {self.MAX_WR_WORD_CNT}")
            size = self.MAX_WR_WORD_CNT 
        #print(value[:size])
        self.session.mwr(addr, size=size, words=value[:size], word_size=4)

    # Test write and read operations for 32-bit words
    def testWrRdWords(self, address: int = 0, size: int = 32, maxChunkSize: int = MAX_WR_WORD_CNT) -> bool:  
        passed = True
        self.connect()
        wList = []
        # generate a list of random 32-bit words to write to DDR3 memory
        print("startAddress=0x{:08X}, size={}".format(address, size))
        for i in range(size):
            #wList.append(int(i+1))
            wList.append(random.randint(0, 0xFFFFFFFF))
        print("wList[0]=0x{:08X}, wList[-1]=0x{:08X}".format(wList[0], wList[-1]))
        # limit to MAX_WR_WORD_CNT
        remainder = size
        start = 0
        while(remainder > 0):
            chunk = min(remainder, maxChunkSize)
            # Write the list of words to DDR3 memory and read it back
            wChunk=wList[start:start+chunk]
            self.writeWordList(addr=self.DDR_BASE+address, value=wChunk, size=chunk)
            rdList = self.readWordList(addr=self.DDR_BASE+address, size=chunk)
            # compare
            if( wChunk == rdList):
                pass
                #print("Read data matched written data")
            else:
                passed = False
                # read back again to check for any transient errors
                rdList2 = self.readWordList(addr=self.DDR_BASE+address, size=chunk)
                if( rdList2 != rdList):
                    print("Read data is not consistent, possible transient error")
                for i in range(chunk):
                    if wChunk[i] != rdList[i]:
                        print(f"Start address 0x{self.DDR_BASE+address:08X} Mismatch at index {i}: written 0x{wChunk[i]:08X}, read 0x{rdList[i]:08X}, xor 0x{wChunk[i] ^ rdList[i]:02X}")
            start += chunk
            remainder -= chunk
        return passed

def main(size: int = 32):
    mem = Jtag2Ddr3Access()
    return mem.testWrRdWords(address=0, size=size)

if __name__ == "__main__":
    main()

