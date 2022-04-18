# Win32 Wireshark named pipes example
# Requires Python for Windows and the Python for Windows Extensions:
# http://www.python.org
# http://sourceforge.net/projects/pywin32/

import win32pipe, win32file
import time
import datetime
import serial
import struct
import subprocess
import pcapng.blocks as blocks
from pcapng import FileWriter


                         
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

def pcapng_format_write():
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
    test_pl = (0x5a, 0x08,0x00,0x01,0x00,0x31,0x32,0x33,0x34,0x35,0x36)    
    win32_pipe_writer = win32PipeWriter()
    win32_pipe_writer.create(r"\\.\pipe\wireshark")
    win32_pipe_writer.connect()

    # FileWriter() immediately writes the SHB and any IDBs you've added to it
    writer = FileWriter(win32_pipe_writer, shb)

    spb = shb.new_member(blocks.SimplePacket)
    # spb = shb.new_member(blocks.EnhancedPacket)
    spb.packet_data = bytes(test_pl)
    while True:
        writer.write_block(spb)
        time.sleep(1)
        break

class ws_serial():
    def __init__(self, port, baudrate, timeout=0.5):
        self.port = port
        self.baudrate = baudrate
        self.timeout = timeout

    def open(self):
        self.ser = serial.Serial(self.port, self.baudrate, timeout = self.timeout)

    def close(self):
        self.ser.close()
    
    def read(self, length):
        return self.ser.read(length)
    
    def read_all(self):
        return self.ser.read(self.in_waiting())

    def in_waiting(self):
        return self.ser.inWaiting()

    def write(self, buff):
        self.ser.write(buff)

class ws_pipe():
    def __init__(self, wireshark_abs_path=None, pipe_name=r'\\.\pipe\wireshark'):
        self.magic_num = 0xa1b2c3d4
        self.major_ver = 0x02
        self.minor_ver = 0x04
        self.link_type = 1# 802.11: 105
        self.pipe_name = pipe_name
        self.wireshark_abs_path = wireshark_abs_path
        
    def create_pipe(self):
        print("self.pipe_name:", self.pipe_name)
        self.pipe = win32pipe.CreateNamedPipe(
                    self.pipe_name,
                    win32pipe.PIPE_ACCESS_OUTBOUND,
                    win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
                    1, 65536, 65536,
                    300,
                    None)
    
    def connect_pipe(self):
        '''
        struct pcap_file_header
        {
            uint32_t magic_number;  /* magic number */
            uint16_t version_major; /* major version number */
            uint16_t version_minor; /* minor version number */
            int32_t  thiszone;      /* GMT to local correction */
            uint32_t sigfigs;       /* accuracy of timestamps */
            uint32_t snaplen;       /* max length of captured packets, in octets */
            uint32_t linktype;      /* data link type */
        }
        '''
        win32pipe.ConnectNamedPipe(self.pipe, None)
        global_header = struct.pack('IHHiIII',
            self.magic_num,     # magic number 4
            self.major_ver,     # major version number 2
            self.minor_ver,     # minor version number 2
            0,                  # GMT to local correction 4
            0,                  # accuracy of timestamps 4
            0,                  # max length of captured packets, in octets 4
            self.link_type      # data link type 4
        )
        # win32file.WriteFile(self.pipe, global_header)

    def write_pipe(self, packet):
        packet_len = len(packet)
        if packet_len <= 0:
            return

        '''
        struct pcaprec_hdr {
            uint32_t ts_sec;        /* timestamp seconds */
            uint32_t ts_usec;       /* timestamp microseconds (nsecs for PCAP_NSEC_MAGIC) */
            uint32_t incl_len;      /* number of octets of packet saved in file*/
            uint32_t orig_len;      /* actual length of packet */
        };
        '''
        packet_header = struct.pack('IIII',
            int(time.time()),                       # timestamp seconds
            datetime.datetime.now().microsecond,    # timestamp microseconds
            packet_len,                             # number of octets of packet
            packet_len                              # actual length of packet
        )
        
        # win32file.WriteFile(self.pipe, packet_header)
        # win32file.WriteFile(self.pipe, packet)

    def write(self, data):
        #send pcap data trough the pipe
        win32file.WriteFile(self.pipe, data)

    def wireshark_start(self, file_size=20480):
        #open Wireshark, configure pipe interface and start capture (not mandatory, you can also do this manually)
        wireshark_cmd=[self.wireshark_abs_path, r'-i'+self.pipe_name,'-k','-b filesize:%d' % file_size]
        print(wireshark_cmd)
        proc=subprocess.Popen(wireshark_cmd)

        #wait 2 second (not mandatory, but this let watching data coming trough the pipe)
        time.sleep(2)
        
if __name__ == '__main__':
  
    # pcapng_format_write()  
    shb = blocks.SectionHeader(
        options={
            "shb_hardware": "artificial",
            "shb_os": "python",
            "shb_userappl": "python-pcapng",
        }
    )
    # linktype设置为162，在wireshark源码中表示保留给用户的USER15 类型
    idb = shb.new_member(
        blocks.InterfaceDescription,
        link_type=162,#251,
        options={
            "if_description": "Hand-rolled",
            "if_os": "Python",
            "if_filter": [(0, b"tcp port 23 and host 192.0.2.5")],
        },
    )
    ws_ser = ws_serial("COM1", 921600)
    ws_ser.open()
    wireshark_path = r'D:\src\Development\wsbuild64\run\RelWithDebInfo\Wireshark.exe'
    # wireshark_path = r'D:\Tools\Wireshark\Wireshark.exe'
    w32_ws_pipe = ws_pipe(wireshark_path, r"\\.\pipe\wireshark")
    w32_ws_pipe.wireshark_start()
    w32_ws_pipe.create_pipe()
    print("wireshark start success!!!")
    print("start connect pipe...")
    w32_ws_pipe.connect_pipe()
    print("pipe connect success!!!")
    print("starting wireshark...")
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
    test_pl = (0x05, 0x5a, 0x08,0x00,0x01,0x00,0x31,0x32,0x33,0x34,0x35,0x36)
    # # FileWriter() immediately writes the SHB and any IDBs you've added to it
    writer = FileWriter(w32_ws_pipe, shb)

    spb = shb.new_member(blocks.SimplePacket)
    # spb = shb.new_member(blocks.EnhancedPacket)
    spb.packet_data = bytes(test_pl)
    # writer.write_block(spb)
    while True:
        # time.sleep(1)
        buf = ws_ser.read_all()
        if len(buf) > 0:
            spb.packet_data = bytes(buf)
            # w32_ws_pipe.write_pipe(bytes(test_pl))
            writer.write_block(spb)
        
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
#   Block Total Length  58 00 00 00 
#  Simple Packet Block              
#    Block Type         03 00 00 00 
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


#  Block Type           0A 0D 0D 0A 
#  Block Total Length   50 00 00 00 
#  Byte-Order Magic     4D 3C 2B 1A 
#  Major version        01 00 
#  Minor version        00 00
#  Section Length       FF FF FF FF FF FF FF FF 
#  Options
#    option code        02 00 
#    option length      0A 00 
#    option value       61 72 74 69 66 69 63 69 61 6C 
#         pad           00 00 
#    option code        03 00 
#    option length      06 00 
#    option value       70 79 74 68 6F 6E 
#         pad           00 00 
#    option code        04 00 
#    option length      0D 00 
#    option value       70 79 74 68 6F 6E 2D 70 63 61 70 6E 67 
#         pad           00 00 00 
#    option code == opt_endifopt    00 00 
#    Option Length == 0             00 00 
#  Block Total Length   50 00 00 00    
# Interface Description Block
#    Block Type         01 00 00 00 
#    Block Total Length 58 00 00 00 
#    LinkType           01 00 
#    Reserved           00 00 
#    SnapLen            00 00 00 00
#    Options  
#       option code     03 00 
#       option length   0B 00 
#       option value    48 61 6E 64 2D 72 6F 6C 6C 65 64 
#           pad         00 
#       option code     0C 00 
#       option length   06 00 
#       option value    50 79 74 68 6F 6E 
#           pad         00 00 
#       option code     0B 00 
#       option length   1F 00  
#       option value    00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 
#           pad         00 00 00 00 00 
#    Block Total Length 58 00 00 00 
# Enhanced Packet Block 
#    Block Type         06 00 00 00 
#    Block Total Length 50 00 00 00
#    Interface ID       00 00 00 00 
#    Timestamp(High)    00 00 00 00 
#    Timestamp(Low)     00 00 00 00 
#    Captured Len       2D 00 00 00 
#    Packet Len         2D 00 00 00 
#    Packet Data        FF FF FF FF FF FF 11 22 33 DD AA 00 08 00 45 00 
#                       00 1F 00 00 00 00 FE 11 00 00 7F 00 00 01 7F 00 
#                       00 02 12 34 56 78 00 0B 00 00 44 41 50 00 00 00 
#    Block Total Length 50 00 00 00
