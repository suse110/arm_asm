# Win32 Wireshark named pipes example
# Requires Python for Windows and the Python for Windows Extensions:
# http://www.python.org
# http://sourceforge.net/projects/pywin32/

import win32pipe, win32file
import time
import subprocess
import pcapng.blocks as blocks
from pcapng import FileWriter

#open Wireshark, configure pipe interface and start capture (not mandatory, you can also do this manually)
wireshark_cmd=['D:\Tools\Wireshark\Wireshark.exe', r'-i\\.\pipe\wireshark','-k','-b filesize:20480']
print(wireshark_cmd)
shb = blocks.SectionHeader(
    options={
        "shb_hardware": "artificial",
        "shb_os": "python",
        "shb_userappl": "python-pcapng",
    }
)
idb = shb.new_member(
    blocks.InterfaceDescription,
    link_type=0xFFFF,
    options={
        "if_description": "Hand-rolled",
        "if_os": "Python",
        "if_filter": [(0, b"tcp port 23 and host 192.0.2.5")],
    },
)

# fmt: off
# test_pl = (
#         0xff, 0xff, 0xff, 0xff, 0xff, 0xff,     # dest MAC
#         0x11, 0x22, 0x33, 0xdd, 0xaa, 0x00,     # src MAC
#         0x08, 0x00,                             # ethertype (ipv4)
#         0x45, 0x00, 0x00, 31,                   # IP start
#         0x00, 0x00, 0x00, 0x00,                 # ID+flags
#         0xfe, 17,                               # TTL, UDP
#         0x00, 0x00,                             # checksum
#         127, 0, 0, 1,                           # src IP
#         127, 0, 0, 2,                           # dst IP
#         0x12, 0x34, 0x56, 0x78,                 # src/dst ports
#         0x00, 11,                               # length
#         0x00, 0x00,                             # checksum
#         0x44, 0x41, 0x50,                       # Payload
# )
# fmt: on
test_pl = (0x05, 0x5a, 0x08,0x00,0x01,0x00,0x31,0x32,0x33,0x34,0x35,0x36)
class win32PipeWriter():
    def __init__(self, name=None):
        self.pipe = None
        self.pipe_name = name
        if name is not None:
            #create the named pipe \\.\pipe\wireshark
            self.pipe = win32pipe.CreateNamedPipe(
                self.pipe_name,
                win32pipe.PIPE_ACCESS_OUTBOUND,
                win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
                1, 65536, 65536,
                300,
                None)

    def write(self, data):
        #send pcap data trough the pipe
        win32file.WriteFile(self.pipe, data)

    def create(self, name):
        self.pipe_name = name
        print("self.pipe_name:", self.pipe_name)
        #create the named pipe \\.\pipe\wireshark
        self.pipe = win32pipe.CreateNamedPipe(
            self.pipe_name,
            win32pipe.PIPE_ACCESS_OUTBOUND,
            win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
            1, 65536, 65536,
            300,
            None)

    def connect(self):        
        #connect to pipe
        win32pipe.ConnectNamedPipe(self.pipe, None)
proc=subprocess.Popen(wireshark_cmd)

#wait 2 second (not mandatory, but this let watching data coming trough the pipe)
time.sleep(2)
win32_pipe_writer = win32PipeWriter()
win32_pipe_writer.create(r"\\.\pipe\wireshark")
win32_pipe_writer.connect()


# FileWriter() immediately writes the SHB and any IDBs you've added to it
writer = FileWriter(win32_pipe_writer, shb)

spb = shb.new_member(blocks.SimplePacket)
# spb = shb.new_member(blocks.EnhancedPacket)
spb.packet_data = bytes(test_pl)
while True:
    time.sleep(5)
    writer.write_block(spb)
    # break


################################## Simple Packet Block ################################

#   Offset: 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 
	
# 00000000: 0A 0D 0D 0A 50 00 00 00 4D 3C 2B 1A 01 00 00 00    ....P...M<+.....
# 00000010: FF FF FF FF FF FF FF FF 02 00 0A 00 61 72 74 69    ............arti
# 00000020: 66 69 63 69 61 6C 00 00 03 00 06 00 70 79 74 68    ficial......pyth
# 00000030: 6F 6E 00 00 04 00 0D 00 70 79 74 68 6F 6E 2D 70    on......python-p
# 00000040: 63 61 70 6E 67 00 00 00 00 00 00 00 50 00 00 00    capng.......P...
# 00000050: 01 00 00 00 58 00 00 00 01 00 00 00 00 00 00 00    ....X...........
# 00000060: 03 00 0B 00 48 61 6E 64 2D 72 6F 6C 6C 65 64 00    ....Hand-rolled.
# 00000070: 0C 00 06 00 50 79 74 68 6F 6E 00 00 0B 00 1F 00    ....Python......
# 00000080: 00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64    .tcp.port.23.and
# 00000090: 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 00    .host.192.0.2.5.
# 000000a0: 00 00 00 00 58 00 00 00 03 00 00 00 40 00 00 00    ....X.......@...
# 000000b0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 000000c0: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 000000d0: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 000000e0: 50 00 00 00 40 00 00 00 03 00 00 00 40 00 00 00    P...@.......@...
# 000000f0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 00000100: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 00000110: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 00000120: 50 00 00 00 40 00 00 00                            P...@...

#  Section Header Block
#    Block Type         0A 0D 0D 0A 
#    Block Total Length 50 00 00 00 
#    Byte-Order Magic   4D 3C 2B 1A 
#    Major version      01 00 
#    Minor version      00 00
#    Section Length     FF FF FF FF FF FF FF FF 
#    Options            
#       option code     02 00 
#       option length   0A 00 
#       option value    61 72 74 69 66 69 63 69 61 6C           artificial
#           pad         00 00 
#       option code     03 00 
#       option length   06 00 
#       option value    70 79 74 68 6F 6E                       Python
#           pad         00 00 
#       option code     04 00 
#       option length   0D 00 
#       option value    70 79 74 68 6F 6E 2D 70 63 61 70 6E 67  Python-pcapng
#           pad         00 00 00 
#       option code == opt_endifopt 00 00 
#       Option Length == 0          00 00 
#    Block Total Length 50 00 00 00    
# Interface Description Block
#   Block Type          01 00 00 00 
#   Block Total Length  58 00 00 00 
#   LinkType            01 00 
#   Reserved            00 00 
#   SnapLen             00 00 00 00    
#    Options            
#       option code     03 00 
#       option length   0B 00 
#       option value    48 61 6E 64 2D 72 6F 6C 6C 65 64        Hand-rolled
#           pad         00
#       option code     0C 00 
#       option length   06 00 
#       option value    50 79 74 68 6F 6E                       Python
#           pad         00 00 
#       option code     0B 00 
#       option length   1F 00
#       option value    00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35  tcp.port.23.and.host.192.0.2.5
#          pad          00 00 00 00 00 
#                       58 00 00 00 
#  Simple Packet Block              
#    Block Type :       03 00 00 00 
#    Block Total Length 40 00 00 00    
#    Packet Len         2D 00 00 00 
#    Packet Data        FF FF FF FF FF FF 11 22 33 DD AA 00    
#                       08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    
#                       00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    
#                       50 00 00 00 40 00 00 00 03 00 00 00 40 00 00 00    
#                       2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    
#                       08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    
#                       00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    
#                       50 00 00 00 
#    Block Total Length 40 00 00 00                           

################################## Enhanced Packet Block ################################
# 
#   Offset: 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 	
# 00000000: 0A 0D 0D 0A 50 00 00 00 4D 3C 2B 1A 01 00 00 00    ....P...M<+.....
# 00000010: FF FF FF FF FF FF FF FF 02 00 0A 00 61 72 74 69    ............arti
# 00000020: 66 69 63 69 61 6C 00 00 03 00 06 00 70 79 74 68    ficial......pyth
# 00000030: 6F 6E 00 00 04 00 0D 00 70 79 74 68 6F 6E 2D 70    on......python-p
# 00000040: 63 61 70 6E 67 00 00 00 00 00 00 00 50 00 00 00    capng.......P...
# 00000050: 01 00 00 00 58 00 00 00 01 00 00 00 00 00 00 00    ....X...........
# 00000060: 03 00 0B 00 48 61 6E 64 2D 72 6F 6C 6C 65 64 00    ....Hand-rolled.
# 00000070: 0C 00 06 00 50 79 74 68 6F 6E 00 00 0B 00 1F 00    ....Python......
# 00000080: 00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64    .tcp.port.23.and
# 00000090: 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 00    .host.192.0.2.5.
# 000000a0: 00 00 00 00 58 00 00 00 06 00 00 00 50 00 00 00    ....X.......P...
# 000000b0: 00 00 00 00 00 00 00 00 00 00 00 00 2D 00 00 00    ............-...
# 000000c0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 000000d0: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 000000e0: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 000000f0: 50 00 00 00 50 00 00 00                            P...P...


#    0A 0D 0D 0A 
#    50 00 00 00 
#    4D 3C 2B 1A 
#    01 00 
#    00 00
#    FF FF FF FF FF FF FF FF 
#    02 00 
#    0A 00 
#    61 72 74 69 66 69 63 69 61 6C 00 00 
#    03 00 
#    06 00 
#    70 79 74 68 6F 6E 00 00 
#    04 00 
#    0D 00 
#    70 79 74 68 6F 6E 2D 70 63 61 70 6E 67 00 00 00 
#    00 00 
#    00 00 
#    50 00 00 00    

#    01 00 00 00 
#    58 00 00 00 
#    01 00 
#    00 00 
#    00 00 00 00
#    03 00 
#    0B 00 
#    48 61 6E 64 2D 72 6F 6C 6C 65 64 00 
#    0C 00 
#    06 00 
#    50 79 74 68 6F 6E 00 00 
#    0B 00 
#    1F 00  
#    00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 
#    00 00 00 00 00 
#    58 00 00 00 

#    06 00 00 00 
#    50 00 00 00
#    00 00 00 00 
#    00 00 00 00 
#    00 00 00 00 
#    2D 00 00 00 
#    2D 00 00 00 
#    FF FF FF FF FF FF 11 22 33 DD AA 00 08 00 45 00 
#    00 1F 00 00 00 00 FE 11 00 00 7F 00 00 01 7F 00 
#    00 02 12 34 56 78 00 0B 00 00 44 41 50 00 00 00 
#    50 00 00 00
