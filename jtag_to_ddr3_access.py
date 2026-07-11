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
        #print(value[:size])
        self.session.mwr(addr, size=size, words=value[:size], word_size=4)

    # Read list of bytes
    def readList(self, addr: int = DDR_BASE, size: int = 1) -> list:
        # Returns list of bytes
        return self.session.mrd(addr, "-v", size=size, word_size=1)

    # Write list of bytes
    def writeList(self, addr: int = DDR_BASE, value: list = [], size : int = -1):
        if( size == -1):
            size = len(value)
        self.session.mwr(addr, size=size, words=value[:size], word_size=1)

    # Test write and read operations for 32-bit words
    def testWrRdWords(self, memSizeToTest: int):

        self.connect()
        wList = []
        # generate a list of random bytes to write to DDR3 memory
        print("memSizeToTest={}".format(memSizeToTest))
        for i in range(memSizeToTest):
            wList.append(int(i+1))
        print("wList[0]=0x{:08X}, wList[-1]=0x{:08X}".format(wList[0], wList[-1]))
        # Write the list of wordsto DDR3 memory and read it back
        self.writeWordList(self.DDR_BASE, wList)
        rdList = self.readWordList(self.DDR_BASE, len(wList))
        # read back again to check for any transient errors
        rdList2 = self.readWordList(self.DDR_BASE, len(wList))
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
                    print(f"Mismatch at index {i}: written 0x{wList[i]:08X}, read 0x{rdList[i]:08X}, xor 0x{wList[i] ^ rdList[i]:02X}")

    def testWrRdBytes(self, memSizeToTest: int):

        self.connect()
        # adjust memSizeToTest so memSizeToTest % 4 == 0
        memSizeToTest = memSizeToTest - (memSizeToTest % 4)
        wList = []
        print("memSizeToTest={}".format(memSizeToTest))
        # generate a list of random bytes to write to DDR3 memory
        for i in range(memSizeToTest):
            #wList.append(random.randint(0, 255))
            wList.append((i+1) % 256)
        print("wList[0]=0x{:02X}, wList[-1]=0x{:02X}".format(wList[0], wList[-1]))
        # Write the list of bytes to DDR3 memory and read it back
        self.writeList( self.DDR_BASE, wList)
        rdList = self.readList(self.DDR_BASE, len(wList))
        # read back again to check for any transient errors
        rdList2 = self.readList(self.DDR_BASE, len(wList))
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

def main(memSizeToTest: int = 32):
    mem = Jtag2Ddr3Access()
    #return mem.testWrRdBytes(memSizeToTest) # 1024 is breaking point in bytes
    return mem.testWrRdWords(memSizeToTest)
    #pass

if __name__ == "__main__":
    main()

