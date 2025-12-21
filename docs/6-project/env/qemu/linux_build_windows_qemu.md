# 安装ubuntu
`wsl --install -d Ubuntu-20.04`
[更新ubunu20.04源](docs\ubuntu\ubunu20.04源.md)

# 安装build 依赖
`sudo apt-get build-dep qemu`
`sudo apt-get install acpica-tools sparse  libnfs-dev libvdeplug-dev libpipewire-0.2-dev libzstd-dev libsdl2-dev libghc-bzlib-dev cmake libgcrypt20-dev libcrypto++-dev  libcrypto++-utils libcapstone-dev paml libsnappy-dev liblzo2-dev  libu2f-udev libu2f-host-dev  libu2f-server-dev libfuse3-dev libbpf-dev libdw-dev valgrind kcov libgvnc-1.0-dev sysprof binutils-dev binutils-common libsndio-dev libjack-jackd2-dev libdaxctl-dev glusterfs-client glusterfs-common glusterfs-server`

`python3 -m pip install capstone ninja sphinx_rtd_theme==1.1.1`

cgcc - sparse
iasl - acpica-tools

# qemu源码
wget https://download.qemu.org/qemu-9.0.1.tar.xz
tar xvJf qemu-9.0.1.tar.xz

# 配置
cd qemu-9.0.1
mkdir build
cd build
## build mingw32版本
```
../configure --target-list=arm-softmmu \
             --enable-gtk \
             --disable-werror \
             --cross-prefix=x86_64-w64-mingw32-\
             --prefix=~/bin
```
## build linux版本
```
../configure --target-list=arm-softmmu \
             --enable-gtk \
             --disable-werror \
             --prefix=~/bin
```
