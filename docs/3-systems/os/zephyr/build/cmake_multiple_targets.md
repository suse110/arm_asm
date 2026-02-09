# CMake 多构建目标教程

## 1. 概述

在 CMake 中，一个 `CMakeLists.txt` 文件可以指定多个构建目标，这是 CMake 的一个强大特性。通过创建多个目标，你可以在同一个项目中构建不同的可执行文件、库文件或自定义目标，从而更好地组织和管理项目结构。

## 2. 构建目标类型

CMake 支持多种类型的构建目标：

- **可执行文件**：通过 `add_executable` 命令创建
- **库文件**：通过 `add_library` 命令创建，包括静态库、动态库和模块库
- **自定义目标**：通过 `add_custom_target` 命令创建，用于执行自定义命令

## 3. 创建多个可执行文件

### 3.1 基本示例

以下是一个简单的示例，展示如何在一个 `CMakeLists.txt` 文件中创建多个可执行文件：

#### 项目结构

```
multi_target_example/
├── CMakeLists.txt
└── src/
    ├── app1.cpp
    └── app2.cpp
```

#### 源代码文件

##### src/app1.cpp

```cpp
#include <iostream>

int main() {
    std::cout << "Hello from App 1!" << std::endl;
    return 0;
}
```

##### src/app2.cpp

```cpp
#include <iostream>

int main() {
    std::cout << "Hello from App 2!" << std::endl;
    return 0;
}
```

#### CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(multi_target_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 创建第一个可执行文件
add_executable(app1 src/app1.cpp)

# 创建第二个可执行文件
add_executable(app2 src/app2.cpp)
```

### 3.2 构建和运行

1. **创建构建目录**：
   ```bash
   mkdir build
   cd build
   ```

2. **运行 CMake 生成构建文件**：
   ```bash
   cmake -G Ninja ..
   ```

3. **构建所有目标**：
   ```bash
   ninja
   ```

4. **构建单个目标**：
   ```bash
   ninja app1  # 只构建 app1
   ninja app2  # 只构建 app2
   ```

5. **运行可执行文件**：
   ```bash
   ./app1  # 运行 app1
   ./app2  # 运行 app2
   ```

## 4. 创建库文件和可执行文件

### 4.1 基本示例

在实际项目中，通常会将共享代码封装到库文件中，然后由多个可执行文件使用。

#### 项目结构

```
lib_example/
├── CMakeLists.txt
├── include/
│   └── math_utils.h
└── src/
    ├── math_utils.cpp
    ├── app1.cpp
    └── app2.cpp
```

#### 源代码文件

##### include/math_utils.h

```cpp
int add(int a, int b);
int subtract(int a, int b);
```

##### src/math_utils.cpp

```cpp
#include "math_utils.h"

int add(int a, int b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}
```

##### src/app1.cpp

```cpp
#include <iostream>
#include "math_utils.h"

int main() {
    std::cout << "1 + 2 = " << add(1, 2) << std::endl;
    return 0;
}
```

##### src/app2.cpp

```cpp
#include <iostream>
#include "math_utils.h"

int main() {
    std::cout << "5 - 3 = " << subtract(5, 3) << std::endl;
    return 0;
}
```

#### CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(lib_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加包含目录
target_include_directories(${PROJECT_NAME} PRIVATE include)

# 创建静态库
add_library(math_utils STATIC src/math_utils.cpp)

# 为库添加包含目录
target_include_directories(math_utils PUBLIC include)

# 创建第一个可执行文件并链接库
add_executable(app1 src/app1.cpp)
target_link_libraries(app1 math_utils)

# 创建第二个可执行文件并链接库
add_executable(app2 src/app2.cpp)
target_link_libraries(app2 math_utils)
```

### 4.2 构建和运行

1. **创建构建目录**：
   ```bash
   mkdir build
   cd build
   ```

2. **运行 CMake 生成构建文件**：
   ```bash
   cmake -G Ninja ..
   ```

3. **构建所有目标**：
   ```bash
   ninja
   ```

4. **运行可执行文件**：
   ```bash
   ./app1  # 输出: 1 + 2 = 3
   ./app2  # 输出: 5 - 3 = 2
   ```

## 5. 创建自定义目标

### 5.1 基本示例

除了可执行文件和库文件，CMake 还允许创建自定义目标，用于执行各种自定义命令，如运行测试、生成文档等。

#### CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(custom_target_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 创建可执行文件
add_executable(app src/app.cpp)

# 创建自定义目标，用于运行可执行文件
add_custom_target(run
    COMMAND $<TARGET_FILE:app>
    DEPENDS app
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Running application"
)

# 创建自定义目标，用于清理生成的文件
add_custom_target(clean_files
    COMMAND ${CMAKE_COMMAND} -E remove -f output.txt
    COMMENT "Cleaning output files"
)
```

### 5.2 构建和运行

1. **创建构建目录**：
   ```bash
   mkdir build
   cd build
   ```

2. **运行 CMake 生成构建文件**：
   ```bash
   cmake -G Ninja ..
   ```

3. **运行自定义目标**：
   ```bash
   ninja run       # 构建并运行可执行文件
   ninja clean_files  # 清理输出文件
   ```

## 6. 目标依赖关系

### 6.1 基本示例

CMake 允许你定义目标之间的依赖关系，确保在构建某个目标时，其依赖的目标已经被构建。

#### 项目结构

```
dependency_example/
├── CMakeLists.txt
└── src/
    ├── lib.cpp
    ├── app1.cpp
    └── app2.cpp
```

#### CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(dependency_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 创建库文件
add_library(mylib src/lib.cpp)

# 创建第一个可执行文件并链接库
add_executable(app1 src/app1.cpp)
target_link_libraries(app1 mylib)

# 创建第二个可执行文件并链接库
add_executable(app2 src/app2.cpp)
target_link_libraries(app2 mylib)

# 创建自定义目标，依赖于两个可执行文件
add_custom_target(build_all
    DEPENDS app1 app2
    COMMENT "Building all applications"
)
```

### 6.2 构建

1. **创建构建目录**：
   ```bash
   mkdir build
   cd build
   ```

2. **运行 CMake 生成构建文件**：
   ```bash
   cmake -G Ninja ..
   ```

3. **构建自定义目标**：
   ```bash
   ninja build_all  # 构建所有依赖的目标
   ```

## 7. 高级技巧

### 7.1 使用变量管理目标

当项目中有很多目标时，可以使用变量来管理它们，使 `CMakeLists.txt` 文件更加清晰：

```cmake
cmake_minimum_required(VERSION 3.10)
project(advanced_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 定义可执行文件列表
set(EXECUTABLES
    app1
    app2
    app3
)

# 为每个可执行文件创建目标
foreach(EXE ${EXECUTABLES})
    add_executable(${EXE} src/${EXE}.cpp)
endforeach()

# 创建自定义目标，构建所有可执行文件
add_custom_target(build_all
    DEPENDS ${EXECUTABLES}
    COMMENT "Building all executables"
)
```

### 7.2 使用子目录

对于大型项目，可以使用 `add_subdirectory` 命令将项目分成多个子目录，每个子目录负责构建一部分目标：

#### 项目结构

```
subdir_example/
├── CMakeLists.txt
├── lib/
│   ├── CMakeLists.txt
│   └── src/
│       └── lib.cpp
└── apps/
    ├── CMakeLists.txt
    └── src/
        ├── app1.cpp
        └── app2.cpp
```

#### 根目录 CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(subdir_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加库子目录
add_subdirectory(lib)

# 添加应用程序子目录
add_subdirectory(apps)
```

#### lib/CMakeLists.txt

```cmake
add_library(mylib src/lib.cpp)

# 为库添加包含目录
target_include_directories(mylib PUBLIC include)
```

#### apps/CMakeLists.txt

```cmake
# 创建第一个可执行文件并链接库
add_executable(app1 src/app1.cpp)
target_link_libraries(app1 mylib)

# 创建第二个可执行文件并链接库
add_executable(app2 src/app2.cpp)
target_link_libraries(app2 mylib)
```

### 7.3 使用生成器表达式

生成器表达式是 CMake 的一个强大特性，可以在构建时动态计算值。以下是一个使用生成器表达式的示例：

```cmake
cmake_minimum_required(VERSION 3.10)
project(generator_example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 创建可执行文件
add_executable(app src/app.cpp)

# 创建自定义目标，使用生成器表达式获取可执行文件路径
add_custom_target(run
    COMMAND $<TARGET_FILE:app>
    DEPENDS app
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
```

## 8. 常见问题与解决方案

### 8.1 目标名称冲突

如果尝试创建与已存在目标同名的新目标，CMake 会报错。解决方案是确保每个目标都有唯一的名称。

### 8.2 依赖关系循环

如果目标之间存在循环依赖关系，CMake 会报错。解决方案是确保依赖关系是单向的，没有循环。

### 8.3 构建顺序

CMake 会根据目标之间的依赖关系自动确定构建顺序。如果需要手动控制构建顺序，可以使用 `add_dependencies` 命令。

## 9. 总结

在 CMake 中，一个 `CMakeLists.txt` 文件可以指定多个构建目标，这是 CMake 的一个强大特性。通过创建多个目标，你可以：

- 在同一个项目中构建不同的可执行文件
- 将共享代码封装到库文件中，然后由多个可执行文件使用
- 创建自定义目标，用于执行各种自定义命令
- 定义目标之间的依赖关系，确保构建顺序正确

通过本文的教程和示例，相信你已经掌握了在 CMake 中创建多个构建目标的方法。在实际项目中，你可以根据需要灵活运用这些技巧，从而更好地组织和管理项目结构。

## 10. 参考资料

- [CMake 官方文档](https://cmake.org/cmake/help/latest/)
- [CMake 教程](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
- [CMake 命令参考](https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html)
