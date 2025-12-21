[如何在 Windows 10/11 上构建 QEMU](https://polyos.iscas.ac.cn/docs/developer-guides/build-qemu/on-windows/)
# 安装 MSYS2
打开 https://www.msys2.org/ 点击 msys2-x86_64-20230526.exe （通常为 msys2-x8664-_date.exe） 按钮获取 exe 格式的安装包进行安装。

# 构建环境
QEMU 使用 GNU Build System (GNU autotools) 和 meson 进行构建，所以我们需要准备一个包含 GNU Build System、GCC 工具链以及 QEMU 依赖的环境来进行实际构建。此外，由于 PolyOS 社区 QEMU 的源代码托管在 Gitee 上的一个 Git 仓库中，您也需要确保具有 Git 工具来获取源代码

## 配置 GCC 工具链

在 MSYS2 终端中执行 pacman 的安装指令`pacman -Sy mingw-w64-x86_64-toolchain`

## 安装 QEMU 构建依赖
```
pacman -Sy mingw-w64-x86_64-meson mingw-w64-x86_64-ninja \
           mingw-w64-x86_64-python \
           mingw-w64-x86_64-python-sphinx \
           mingw-w64-x86_64-python-sphinx_rtd_theme \
           mingw-w64-x86_64-autotools \
           mingw-w64-x86_64-tools-git \
           mingw-w64-x86_64-cc \
           mingw-w64-x86_64-angleproject \
           mingw-w64-x86_64-capstone \
           mingw-w64-x86_64-curl \
           mingw-w64-x86_64-cyrus-sasl \
           mingw-w64-x86_64-expat \
           mingw-w64-x86_64-fontconfig \
           mingw-w64-x86_64-freetype \
           mingw-w64-x86_64-fribidi \
           mingw-w64-x86_64-gcc-libs \
           mingw-w64-x86_64-gdk-pixbuf2 \
           mingw-w64-x86_64-gettext \
           mingw-w64-x86_64-glib2 \
           mingw-w64-x86_64-gmp \
           mingw-w64-x86_64-gnutls \
           mingw-w64-x86_64-graphite2 \
           mingw-w64-x86_64-gst-plugins-base \
           mingw-w64-x86_64-gstreamer \
           mingw-w64-x86_64-gtk3 \
           mingw-w64-x86_64-harfbuzz \
           mingw-w64-x86_64-jbigkit \
           mingw-w64-x86_64-lerc \
           mingw-w64-x86_64-libc++ \
           mingw-w64-x86_64-libdatrie \
           mingw-w64-x86_64-libdeflate \
           mingw-w64-x86_64-libepoxy \
           mingw-w64-x86_64-libffi \
           mingw-w64-x86_64-libiconv \
           mingw-w64-x86_64-libidn2 \
           mingw-w64-x86_64-libjpeg-turbo \
           mingw-w64-x86_64-libnfs \
           mingw-w64-x86_64-libpng \
           mingw-w64-x86_64-libpsl \
           mingw-w64-x86_64-libslirp \
           mingw-w64-x86_64-libssh \
           mingw-w64-x86_64-libssh2 \
           mingw-w64-x86_64-libtasn1 \
           mingw-w64-x86_64-libthai \
           mingw-w64-x86_64-libtiff \
           mingw-w64-x86_64-libunistring \
           mingw-w64-x86_64-libunwind \
           mingw-w64-x86_64-libusb \
           mingw-w64-x86_64-libwebp \
           mingw-w64-x86_64-libwinpthread-git \
           mingw-w64-x86_64-lz4 \
           mingw-w64-x86_64-lzo2 \
           mingw-w64-x86_64-nettle \
           mingw-w64-x86_64-openssl \
           mingw-w64-x86_64-opus \
           mingw-w64-x86_64-orc \
           mingw-w64-x86_64-p11-kit \
           mingw-w64-x86_64-pango \
           mingw-w64-x86_64-pixman \
           mingw-w64-x86_64-SDL2 \
           mingw-w64-x86_64-SDL2_image \
           mingw-w64-x86_64-snappy \
           mingw-w64-x86_64-spice \
           mingw-w64-x86_64-usbredir \
           mingw-w64-x86_64-xz \
           mingw-w64-x86_64-zlib \
           mingw-w64-x86_64-zstd
```
## 安装 Git
通过在 Powershell 中运行`winget install -e --id Git.Git`命令进行 Git 的安装


# 获取 QEMU (by PolyOS 社区) 的源码
在开始菜单或桌面上找到 MSYS2 MinGW 64 快捷方式，右击选择打开一个具备管理员权限的 MinGW64 终端，使用 git 来检出 [QEMU 仓库](https://polyos.iscas.ac.cn/docs/developer-guides/build-qemu/on-windows/#)
[北京外国语大学开源软件镜像站QEMU Git](https://mirrors.bfsu.edu.cn/help/qemu.git/)

`git clone https://github.com/qemu/qemu.git && cd qemu &&git submodule init && git submodule update --recursive`

克隆 QEMU 代码及其子模块，使用以下脚本
`curl https://mirrors.tuna.tsinghua.edu.cn/git/qemu/qemu.sh | bash`

> 您需要确保该终端是 MinGW64 环境，而不是其他环境（MinGW32、Clang32/64、UCRT64 等）。
> 您也可以在一个管理员权限的 Powershell 中简单的使用下列命令来切换到 MinGW64 环境。
> C:/msys64/msys2_shell.cmd -defterm -here -no-start -mingw64
> 如果您没有将 MSYS2 安装至默认位置，您需要替换 C:/msys64/msys2_shell.cmd 为正确的路径

`git clone https://gitee.com/TODO-REVIEW-FIXME`
# 安装依赖

```
sudo apt install libglib2.0-dev \
  libgcrypt20-dev \
  zlib1g-dev \
  autoconf \
  automake \
  libtool \
  bison \
  flex \
  libpixman-1-dev\
  sparse 
```
Program cgcc found: NO //sparse 
Library util found: NO //librust-pidfile-rs-dev??
Program midl found: NO //lmdb-doc liblmdb-dev
../meson.build:685:15: ERROR: C shared or static library 'pathcch' not found
Program iasl found: NO //acpica-tools
# 配置 QEMU 编译选项
我们预期构建一个支持 GTK、SDL，目标平台为 riscv64 的 QEMU 仿真器。所以我们只需要提供简单的配置即可获得我们需要的仿真环境，如果您需要获取更丰富的支持，请阅读 [高级选项和定制](https://polyos.iscas.ac.cn/docs/developer-guides/build-qemu/#advanced-options) 。

首先，您需要导航至 QEMU 的源码目录，创建一个用于存储构建缓存的目录 build 
```
cd /path/to/qemu
mkdir build && cd build
```
接下来，我们运行 `configure` 脚本来生成适合我们需求的 Makefile
  --cross-prefix=PREFIX    use PREFIX for compile tools, PREFIX can be blank []
  --cc=CC                  use C compiler CC [cc]
  --host-cc=CC             when cross compiling, use C compiler CC for code run
                            at build time [cc]
  --python=PYTHON          use specified python [/usr/bin/python3]
  --gdb=GDB-path           gdb to use for gdbstub tests [/usr/bin/gdb-multiarch]

  --cross-cc-ARCH=CC       use compiler when building ARCH guest test cases
  --cross-cc-cflags-ARCH=  use compiler flags when building ARCH guest tests
  --cross-prefix-ARCH=PREFIX cross compiler prefix when building ARCH guest test cases
```
../configure --target-list=riscv64-softmmu \
             --enable-sdl --enable-gtk \
             --disable-werror \
             --prefix="$USERPROFILE"/bin

../configure --target-list=arm-softmmu \
             --enable-sdl --enable-gtk \
             --disable-werror \
             --prefix="$USERPROFILE"/bin

../configure --target-list=arm-softmmu \
             --enable-sdl --enable-gtk \
             --disable-werror \
             --cross-prefix=x86_64-w64-mingw32-\
             --prefix=~/bin
```

可用target可以用`../configure --help`查看

`arm-softmmu riscv32-softmmu riscv64-softmmu x86_64-softmmu xtensa-softmmu xtensaeb-softmmu`


我们通过 `--target-list=riscv64-softmmu` 生成指定架构（riscv64）的仿真器，通过 `--enable-sdl` 和 `--enable-gtk` 启用 SDL 和 GTK 支持，并指定在执行安装时将 QEMU 安装到用户目录下的 bin 目录，例如：`C:\Users\polyos\bin`

# 编译 QEMU
我们只需要执行 `make` 即可完成构建
> 可以通过多线程构建来减少 make 的执行时间

# 安装 QEMU
简单的执行 `make install` 后，QEMU 仿真器将会被安装到 `%USERPROFILE%\bin` 下
>您可以将 `%USERPROFILE%\bin` 追加至环境变量 PATH 的开头，以将其作为默认的仿真器

# 运行 QEMU
可以通过 PolyOS 的启动脚本来使用您构建运行的 QEMU
`Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://polyos.iscas.ac.cn/scirpts/qemu-launcher.ps1')) --Arg1 updater.img --Arg2 system.img --Arg3 vendor.img --Arg4 userdata.img --Kernel kernel --Initrd initrd.gz`

