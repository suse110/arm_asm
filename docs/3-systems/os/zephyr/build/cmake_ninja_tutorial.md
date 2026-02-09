# CMake 与 Ninja 构建系统教程

## 1. 概述

CMake 和 Ninja 是现代 C/C++ 项目中常用的构建工具组合。CMake 负责生成构建系统，而 Ninja 则负责执行实际的构建过程。这种组合提供了高效、跨平台的构建解决方案。

### 1.1 CMake 简介

CMake 是一个跨平台的构建系统生成器，它可以根据平台生成相应的构建文件，如 Unix 系统的 Makefile、Windows 系统的 Visual Studio 解决方案，以及 Ninja 构建文件等。

### 1.2 Ninja 简介

Ninja 是一个专注于速度的小型构建系统，它的设计目标是快速执行构建过程。与传统的 Make 相比，Ninja 在处理大型项目时速度更快，因为它的构建文件格式更加简洁高效。

## 2. 安装

### 2.1 安装 CMake

- **Windows**: 从 [CMake 官网](https://cmake.org/download/) 下载安装包并运行。
- **Linux**: 使用包管理器安装，如 `sudo apt install cmake`。
- **macOS**: 使用 Homebrew 安装，如 `brew install cmake`。

### 2.2 安装 Ninja

- **Windows**: 从 [Ninja GitHub 仓库](https://github.com/ninja-build/ninja/releases) 下载可执行文件并添加到系统路径。
- **Linux**: 使用包管理器安装，如 `sudo apt install ninja-build`。
- **macOS**: 使用 Homebrew 安装，如 `brew install ninja`。

## 3. 基本使用流程

1. **创建 CMakeLists.txt 文件**：定义项目的构建规则。
2. **运行 CMake 生成 Ninja 构建文件**：指定构建目录和生成器。
3. **运行 Ninja 执行构建**：编译源代码并生成可执行文件。

## 4. 简单范例

### 4.1 项目结构

首先，让我们创建一个简单的项目结构：

```
cmake_ninja_example/
├── CMakeLists.txt
└── src/
    ├── main.cpp
    └── hello.cpp
```

### 4.2 创建源代码文件

#### src/hello.cpp

```cpp
#include <iostream>

void hello() {
    std::cout << "Hello, CMake and Ninja!" << std::endl;
}
```

#### src/main.cpp

```cpp
void hello();

int main() {
    hello();
    return 0;
}
```

### 4.3 创建 CMakeLists.txt 文件

```cmake
cmake_minimum_required(VERSION 3.10)
project(cmake_ninja_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(example src/main.cpp src/hello.cpp)
```

### 4.4 生成 Ninja 构建文件并构建

1. **创建构建目录**：
   ```bash
   mkdir build
   cd build
   ```

2. **运行 CMake 生成 Ninja 构建文件**：
   ```bash
   cmake -G Ninja ..
   ```

3. **运行 Ninja 执行构建**：
   ```bash
   ninja
   ```

4. **运行生成的可执行文件**：
   ```bash
   ./example
   ```

   输出结果：
   ```
   Hello, CMake and Ninja!
   ```

## 5. CMake 常用命令

### 5.1 基本命令

- `cmake_minimum_required(VERSION <version>)`：指定 CMake 的最低版本要求。
- `project(<name>)`：定义项目名称。
- `add_executable(<name> <sources>)`：创建可执行文件。
- `add_library(<name> <sources>)`：创建库文件。
- `target_include_directories(<target> <scope> <directories>)`：添加包含目录。
- `target_link_libraries(<target> <libraries>)`：链接库文件。

### 5.2 变量设置

- `set(<variable> <value>)`：设置变量值。
- `set(CMAKE_CXX_STANDARD <standard>)`：设置 C++ 标准版本。
- `set(CMAKE_BUILD_TYPE <type>)`：设置构建类型，如 Debug、Release 等。

### 5.3 条件语句

```cmake
if(<condition>)
    # 条件为真时执行的命令
elseif(<condition>)
    # 其他条件为真时执行的命令
else()
    # 所有条件都为假时执行的命令
endif()
```

## 6. Ninja 常用命令

### 6.1 基本命令

- `ninja`：执行默认构建目标。
- `ninja <target>`：执行指定的构建目标。
- `ninja -j <number>`：指定并行构建的任务数。
- `ninja -v`：显示详细的构建命令。
- `ninja clean`：清理构建输出。

### 6.2 高级用法

- `ninja -t targets`：列出所有可用的构建目标。
- `ninja -t clean`：清理构建输出（与 `ninja clean` 相同）。
- `ninja -t recompact`：重新压缩 Ninja 构建文件，减少文件大小。

## 7. 高级技巧

### 7.1 构建类型

CMake 支持多种构建类型，如 Debug、Release、RelWithDebInfo 和 MinSizeRel。可以通过设置 `CMAKE_BUILD_TYPE` 变量来指定：

```bash
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
```

### 7.2 并行构建

Ninja 默认会根据系统的 CPU 核心数自动设置并行构建的任务数。也可以通过 `-j` 参数手动指定：

```bash
ninja -j 4
```

### 7.3 自定义目标

在 CMakeLists.txt 中，可以使用 `add_custom_target` 命令创建自定义目标：

```cmake
add_custom_target(run
    COMMAND $<TARGET_FILE:example>
    DEPENDS example
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
```

然后使用 `ninja run` 命令运行可执行文件。

## 8. 常见问题与解决方案

### 8.1 CMake 找不到 Ninja

如果 CMake 找不到 Ninja 命令，可以指定 Ninja 的完整路径：

```bash
cmake -G Ninja -DCMAKE_MAKE_PROGRAM=/path/to/ninja ..
```

### 8.2 构建失败

- **检查源代码**：确保源代码没有语法错误。
- **检查 CMakeLists.txt**：确保 CMake 配置正确。
- **清理构建目录**：删除构建目录并重新运行 CMake 和 Ninja。

### 8.3 性能优化

- **使用 Ninja**：与其他构建系统相比，Ninja 的构建速度更快。
- **启用并行构建**：使用 `-j` 参数指定合适的并行任务数。
- **使用 ccache**：缓存编译结果，减少重复编译时间。

## 9. 总结

CMake 和 Ninja 是一对强大的构建工具组合，它们可以帮助开发者更高效地构建 C/C++ 项目。CMake 提供了跨平台的构建系统生成能力，而 Ninja 则专注于快速执行构建过程。通过本文的教程和范例，相信你已经掌握了它们的基本使用方法。

在实际项目中，你可以根据需要进一步探索 CMake 的高级功能，如模块系统、打包、测试等，以及 Ninja 的性能优化技巧，从而打造更加高效的构建流程。

## 10. 参考资料

- [CMake 官方文档](https://cmake.org/cmake/help/latest/)
- [Ninja 官方文档](https://ninja-build.org/manual.html)
- [CMake 教程](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
