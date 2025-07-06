import subprocess  
import os  

# 获取当前目录  
cur_dir = os.getcwd()  

# 切换到上级目录的上级目录的上级目录的上级目录  
os.chdir(os.path.join(cur_dir, '..', '..', '..', '..', '..'))  
import setenv
setenv.set_environment_variables()

# 返回到原始目录  
os.chdir(cur_dir)  

# 切换到上级目录  
os.chdir(os.path.join(cur_dir, '..'))  

# 获取当前目录名作为项目名  
proj_name = os.path.basename(os.getcwd())  

# 设置QEMU4STM32的路径和ELF文件的路径  
qemu4stm32_path = ''#r'C:\Users\suse1\AppData\Roaming\xPacks\@xpack-dev-tools\qemu-arm\2.8.0-12.1\.content\bin'  
elf_file = os.path.join(os.environ['ROOT_DIR'], 'main', 'build', 'stm32f4xx', proj_name, f'{proj_name}.elf')  
print(elf_file)
# 检查qemu-system-arm是否已经在运行  
result = subprocess.run(['tasklist'], stdout=subprocess.PIPE, text=True)  
if 'qemu-system-arm' not in result.stdout:  
    print('start qemu-system-arm')  
    subprocess.Popen([qemu4stm32_path, 'qemu-system-arm', '-nographic', '-smp', '1', '-machine', 'netduinoplus2', '-kernel', elf_file, '-s', '-S'])  
else:  
    print('qemu-system-arm already run')  
# 再次检查qemu-system-arm是否启动成功  
result = subprocess.run(['tasklist'], stdout=subprocess.PIPE, text=True)  
if 'qemu-system-arm' not in result.stdout:  
    print('qemu-system-arm start fail')  
else:  
    subprocess.run(['arm-none-eabi-gdb', elf_file, '-q', '-x', 'gdbinit'])