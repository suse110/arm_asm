#-*-coding:utf-8-*-
##############################################################################
#
#    Copyright (C) zengxuemin, 2015
#    All Rights Reserved.
#  
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Lesser General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Lesser General Public License for more details.
#
#    You should have received a copy of the GNU Lesser General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#   
##############################################################################
#  Author       : zengxuemin 
#  Email        ：suse110@hotmail.com
#  Date         : 2015-08-02
#  Description  :
##############################################################################
import time,string,re,binascii,serial
import threading,sys
from Queue import Queue
def showHex(argv,prompt=None):
    result = ''
    hLen = len(argv)
    line_num = 0
    for i in xrange(hLen):
        hvol = ord(argv[i])
        hhex = '%02x'%hvol
        if i%16 == 0:
            separator='\n'
            result += "%s%04d   : %s"%(separator, line_num, hhex)
            line_num += 16
        elif i%8 == 0:
            separator='  '
            result += separator + hhex
        else:
            separator=' '                        
            result += separator + hhex    
    if argv=='' or argv==None:
        result = ' None'
    if prompt == None:    
        print( 'hexShow:%s\n' % result)
    else:
        print( '%-7s:%s\n' % (prompt,result)    )
class ser_port(threading.Thread):
    def __init__(self,ser_port=None,baudrate=921600,tm_out = 3):
        threading.Thread.__init__(self)
        self.thread_stop = False
        self.port=''
        self.ser = None 
        self.recv_type='wait' #'continue' #
        self.q = Queue(maxsize=4096)
        self.chars_count=0
        while 1:
            if(ser_port is None):            
                ser_port = input("choose the serial port:<0~N>\n")
                ser_port = ser_port.replace(' ','')
                if ser_port == '':
                    sys.exit(0)       
            ser_port = 'COM'+ ser_port
            self.port=ser_port 
            try:
                self.ser = serial.Serial(ser_port,baudrate,timeout=tm_out)
                #self.ser = serial.Serial(ser_port,baudrate)
                self.ser.flushOutput()
                break                
            except Exception as ex:
                print( sys.exc_info())
                print( u"找不到串口%s,请重新输入:\n"%ser_port)
                ser_port = None   

    def run(self):
        result = ''
        line_num = 0
        cur_offset=0
        if self.recv_type == 'continue':
            while not self.thread_stop:
                count = self.ser.inWaiting()
                rdata = self.ser.read(count)
                #rdata =  re.findall(r'(.{2})',rdata.encode("HEX"))
                #rdata = ' '.join(rdata)
                if(rdata != ''):
                    self.chars_count = len(rdata)
                    for i in range(1,self.chars_count):
                        hhex = '%02x'%ord(rdata[i])
                        if i%16 == 0:
                            separator='\n'
                            #result = "%s%04d   : %s"%(separator, line_num, hhex)
                            result = "%s   : %s"%(separator, hhex)
                            line_num += 16
                            print( result)
                        elif i%8 == 0:
                            separator='  '
                            result = separator + hhex
                            print( result,)
                        else:
                            separator=' '                        
                            result = separator + hhex    
                            print( result,)
                       
                    #print( "%s" % result)
                
        elif self.recv_type == 'wait':
            while not self.thread_stop:
                count = self.ser.inWaiting()
                rdata = self.ser.read(count)
                
                #rdata =  re.findall(r'(.{2})',rdata.encode("HEX"))
                #rdata = ' '.join(rdata)
                if(rdata != ''):
                    self.q.put(rdata)
                    #print( rdata.encode("HEX"))
        
    def close(self):
        self.thread_stop = True
        time.sleep(0.2)
        self.ser.close()
    def write_chars(self,hexs):
        """
           hexs [in] hex string eg: '02 31 31 30 03 4f ff' or '0231350344fe'
        """
        hexs = hexs.replace(' ','')
        if(len(hexs)%2):
            print( 'the lenght of data to send must be multiple of 2 \n')
            return -1
        self.ser.flushOutput()
        self.ser.write(hexs.decode("HEX"))
        return 0
    def async_read(self):
        """
        无数据则返回空字符串
        """
        s=''
        time.sleep(0.04)#延时等待串口数据
        while(not self.q.empty()):
            s += self.q.get(timeout=3)
            time.sleep(0.01)
        return s
    def read_chars(self):
        s=''
        try:
            s += self.q.get(timeout=3)
            # time.sleep(0.2)#延时等待串口数据
            while(not self.q.empty()):
                s += self.q.get(timeout=3)
                # time.sleep(0.2)
        except:
            print( '\n** Receive data time out!!\n')
            #self.close()
            #sys.exit(0) 
            raise
        return s        
    def read_chars_block(self,length):
        return self.ser.read(length)
    def inWaiting(self):
        return self.q.qsize()
if __name__ == '__main__':
    pser = ser_port('1',baudrate=921600)
    pser.setDaemon(True)
    pser.start()
    # pser.join()
    while True:
        pser.write_chars('020000010011036E6D')
        # print(  pser.ser.read(18).encode("HEX"))
        print(  pser.read_chars())