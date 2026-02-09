# CMake 常用语法详解

本文档介绍 CMake 的常用语法和核心概念，不包含 Zephyr 特定的定制部分，旨在帮助开发者快速掌握 CMake 的基本用法。

## 1. 基本概念

### 1.1 CMake 是什么

CMake 是一个跨平台的构建系统生成工具，它可以根据平台不同生成相应的构建系统文件（如 Makefile、Visual Studio 项目、Ninja 构建文件等）。

### 1.2 核心文件

- **CMakeLists.txt**: CMake 的主配置文件，定义项目结构和构建规则
- **CMakeCache.txt**: CMake 缓存文件，存储配置结果
- **build/**: 构建目录，存放生成的构建系统文件和编译产物

## 2. 基础语法

### 2.1 注释

```cmake
# 单行注释

#[[
多行注释
多行注释
]]#
```

### 2.2 变量

#### 2.2.1 变量定义

```cmake
# 定义变量
set(VARIABLE_NAME "value")

# 定义列表变量
set(MY_LIST "item1" "item2" "item3")

# 使用变量
message("VARIABLE_NAME = ${VARIABLE_NAME}")
```

##### 函数说明

**set()**
- **签名**: `set(<variable> <value>... [PARENT_SCOPE])`
- **参数**: 
  - `<variable>`: 变量名
  - `<value>`: 变量值，可以是多个值（列表）
  - `PARENT_SCOPE`: 可选，将变量设置到父作用域
- **功能**: 定义或修改变量值

**message()**
- **签名**: `message([<mode>] "<message>")`
- **参数**: 
  - `<mode>`: 可选，消息模式（STATUS, WARNING, AUTHOR_WARNING, SEND_ERROR, FATAL_ERROR, NOTICE）
  - `<message>`: 消息内容
- **功能**: 输出消息到控制台

#### 2.2.2 变量类型

- **字符串**: `set(MY_STRING "hello")`
- **列表**: `set(MY_LIST "a" "b" "c")`
- **布尔值**: `set(MY_BOOL TRUE)` 或 `set(MY_BOOL FALSE)`
- **路径**: `set(MY_PATH "${CMAKE_CURRENT_SOURCE_DIR}/src")`

#### 2.2.3 环境变量

```cmake
# 读取环境变量
set(MY_ENV_VAR $ENV{PATH})

# 设置环境变量
set(ENV{PATH} "${ENV{PATH}}:/new/path")
```

### 2.3 条件语句

#### 2.3.1 if 语句

```cmake
if(CONDITION)
    # 条件为真时执行
elseif(ANOTHER_CONDITION)
    # 另一个条件为真时执行
else()
    # 所有条件都为假时执行
endif()
```

##### 函数说明

**if()**
- **签名**: `if(<condition>)`
- **参数**: 
  - `<condition>`: 条件表达式
- **功能**: 开始条件判断块

**elseif()**
- **签名**: `elseif(<condition>)`
- **参数**: 
  - `<condition>`: 条件表达式
- **功能**: 开始另一个条件判断块

**else()**
- **签名**: `else()`
- **参数**: 无
- **功能**: 开始默认条件块

**endif()**
- **签名**: `endif()`
- **参数**: 无
- **功能**: 结束条件判断块

#### 2.3.2 常用条件表达式

```cmake
# 变量存在且非空
if(DEFINED VARIABLE_NAME)

# 变量为真
if(VARIABLE_NAME)

# 字符串比较
if("${STRING1}" STREQUAL "${STRING2}")

# 数值比较
if(NUM1 EQUAL NUM2)
if(NUM1 LESS NUM2)
if(NUM1 GREATER NUM2)

# 文件/目录检查
if(EXISTS "${FILE_PATH}")
if(IS_DIRECTORY "${DIR_PATH}")
```

### 2.4 循环语句

#### 2.4.1 foreach 循环

```cmake
# 遍历列表
foreach(item IN LISTS MY_LIST)
    message("Item: ${item}")
endforeach()

# 遍历范围
foreach(i RANGE 1 10)
    message("Number: ${i}")
endforeach()
```

##### 函数说明

**foreach()**
- **签名**: `foreach(<loop_var> <items>)` 或 `foreach(<loop_var> IN LISTS <lists>)` 或 `foreach(<loop_var> RANGE <start> <end> [<step>])`
- **参数**: 
  - `<loop_var>`: 循环变量名
  - `<items>`: 要遍历的项列表
  - `IN LISTS <lists>`: 遍历列表变量
  - `RANGE <start> <end> [<step>]`: 遍历数值范围
- **功能**: 开始循环块

**endforeach()**
- **签名**: `endforeach()`
- **参数**: 无
- **功能**: 结束循环块

#### 2.4.2 while 循环

```cmake
set(COUNTER 0)
while(COUNTER LESS 10)
    message("Counter: ${COUNTER}")
    math(EXPR COUNTER "${COUNTER} + 1")
endwhile()
```

##### 函数说明

**while()**
- **签名**: `while(<condition>)`
- **参数**: 
  - `<condition>`: 循环条件
- **功能**: 开始 while 循环块

**endwhile()**
- **签名**: `endwhile()`
- **参数**: 无
- **功能**: 结束 while 循环块

**math()**
- **签名**: `math(EXPR <output_var> <expression> [<options>])`
- **参数**: 
  - `EXPR`: 固定关键字
  - `<output_var>`: 输出变量名
  - `<expression>`: 数学表达式
  - `<options>`: 可选参数（如 `OUTPUT_FORMAT`）
- **功能**: 执行数学计算并将结果存储在变量中

### 2.5 函数和宏

#### 2.5.1 函数

```cmake
function(my_function arg1 arg2)
    # 函数体
    message("arg1: ${arg1}")
    message("arg2: ${arg2}")
    
    # 设置返回值
    set(RESULT "processed_${arg1}_${arg2}" PARENT_SCOPE)
endfunction()

# 调用函数
my_function("hello" "world")
message("Result: ${RESULT}")
```

##### 函数说明

**function()**
- **签名**: `function(<name> [<arg1>] [<arg2>] ...)`
- **参数**: 
  - `<name>`: 函数名
  - `<arg1>`, `<arg2>`: 函数参数
- **功能**: 定义一个函数

**endfunction()**
- **签名**: `endfunction([<name>])`
- **参数**: 
  - `<name>`: 可选，函数名（用于匹配）
- **功能**: 结束函数定义

#### 2.5.2 宏

```cmake
macro(my_macro arg1 arg2)
    # 宏体
    message("arg1: ${arg1}")
    message("arg2: ${arg2}")
    
    # 宏中的变量在调用 scope 中直接可见
    set(MACRO_RESULT "macro_${arg1}_${arg2}")
endmacro()

# 调用宏
my_macro("test" "macro")
message("Macro Result: ${MACRO_RESULT}")
```

##### 函数说明

**macro()**
- **签名**: `macro(<name> [<arg1>] [<arg2>] ...)`
- **参数**: 
  - `<name>`: 宏名
  - `<arg1>`, `<arg2>`: 宏参数
- **功能**: 定义一个宏

**endmacro()**
- **签名**: `endmacro([<name>])`
- **参数**: 
  - `<name>`: 可选，宏名（用于匹配）
- **功能**: 结束宏定义

## 3. 项目配置

### 3.1 项目定义

```cmake
# 定义项目
cmake_minimum_required(VERSION 3.13)
project(MyProject VERSION 1.0 DESCRIPTION "A sample project" LANGUAGES C CXX)

# 设置 C 标准
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
```

##### 函数说明

**cmake_minimum_required()**
- **签名**: `cmake_minimum_required(VERSION <major>[.<minor>[.<patch>]] [FATAL_ERROR])`
- **参数**: 
  - `VERSION <major>[.<minor>[.<patch>]]`: 要求的 CMake 最低版本
  - `FATAL_ERROR`: 可选，在版本不满足时产生致命错误
- **功能**: 指定项目所需的最低 CMake 版本

**project()**
- **签名**: `project(<name> [VERSION <major>[.<minor>[.<patch>[.<tweak>]]]] [DESCRIPTION <description>] [HOMEPAGE_URL <url>] [LANGUAGES <language>...])`
- **参数**: 
  - `<name>`: 项目名称
  - `VERSION <major>[.<minor>[.<patch>[.<tweak>]]]`: 可选，项目版本
  - `DESCRIPTION <description>`: 可选，项目描述
  - `HOMEPAGE_URL <url>`: 可选，项目主页 URL
  - `LANGUAGES <language>...`: 可选，支持的编程语言
- **功能**: 定义项目的基本信息

### 3.2 包含目录

```cmake
# 添加包含目录
target_include_directories(
    ${PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# 全局包含目录（不推荐，优先使用 target_include_directories）
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
```

##### 函数说明

**target_include_directories()**
- **签名**: `target_include_directories(<target> [SYSTEM] <INTERFACE|PUBLIC|PRIVATE> [items1...] [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])`
- **参数**: 
  - `<target>`: 目标名称
  - `SYSTEM`: 可选，将包含目录标记为系统目录
  - `<INTERFACE|PUBLIC|PRIVATE>`: 包含目录的可见性
    - `PRIVATE`: 仅当前目标可见
    - `PUBLIC`: 当前目标和依赖于当前目标的目标可见
    - `INTERFACE`: 仅依赖于当前目标的目标可见
  - `[items1...]`: 包含目录列表
- **功能**: 为目标添加包含目录

**include_directories()**
- **签名**: `include_directories([AFTER|BEFORE] [SYSTEM] <dir>...)`
- **参数**: 
  - `AFTER|BEFORE`: 可选，添加到现有目录的后面或前面
  - `SYSTEM`: 可选，将包含目录标记为系统目录
  - `<dir>...`: 包含目录列表
- **功能**: 为所有目标添加全局包含目录

### 3.3 编译选项

```cmake
# 添加编译选项
target_compile_options(
    ${PROJECT_NAME}
    PRIVATE
        -Wall
        -Wextra
        -Werror
)

# 全局编译选项（不推荐）
add_compile_options(-Wall -Wextra)
```

##### 函数说明

**target_compile_options()**
- **签名**: `target_compile_options(<target> [BEFORE] <INTERFACE|PUBLIC|PRIVATE> [items1...] [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])`
- **参数**: 
  - `<target>`: 目标名称
  - `BEFORE`: 可选，添加到现有选项的前面
  - `<INTERFACE|PUBLIC|PRIVATE>`: 编译选项的可见性
    - `PRIVATE`: 仅当前目标可见
    - `PUBLIC`: 当前目标和依赖于当前目标的目标可见
    - `INTERFACE`: 仅依赖于当前目标的目标可见
  - `[items1...]`: 编译选项列表
- **功能**: 为目标添加编译选项

**add_compile_options()**
- **签名**: `add_compile_options(<option>...)`
- **参数**: 
  - `<option>...`: 编译选项列表
- **功能**: 为所有目标添加全局编译选项

### 3.4 链接选项

```cmake
# 添加链接选项
target_link_options(
    ${PROJECT_NAME}
    PRIVATE
        -Wl,-Map=output.map
)

# 全局链接选项（不推荐）
add_link_options(-Wl,-Map=output.map)
```

##### 函数说明

**target_link_options()**
- **签名**: `target_link_options(<target> [BEFORE] <INTERFACE|PUBLIC|PRIVATE> [items1...] [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])`
- **参数**: 
  - `<target>`: 目标名称
  - `BEFORE`: 可选，添加到现有选项的前面
  - `<INTERFACE|PUBLIC|PRIVATE>`: 链接选项的可见性
    - `PRIVATE`: 仅当前目标可见
    - `PUBLIC`: 当前目标和依赖于当前目标的目标可见
    - `INTERFACE`: 仅依赖于当前目标的目标可见
  - `[items1...]`: 链接选项列表
- **功能**: 为目标添加链接选项

**add_link_options()**
- **签名**: `add_link_options(<option>...)`
- **参数**: 
  - `<option>...`: 链接选项列表
- **功能**: 为所有目标添加全局链接选项

## 4. 构建目标

### 4.1 可执行文件

```cmake
# 添加可执行文件
add_executable(
    ${PROJECT_NAME}
    src/main.c
    src/helper.c
)

# 或使用文件 glob
file(GLOB SOURCES "src/*.c")
add_executable(${PROJECT_NAME} ${SOURCES})
```

##### 函数说明

**add_executable()**
- **签名**: `add_executable(<name> [WIN32] [MACOSX_BUNDLE] [EXCLUDE_FROM_ALL] [source1] [source2] ...)`
- **参数**: 
  - `<name>`: 可执行文件名称
  - `WIN32`: 可选，Windows 特定选项，创建 GUI 应用程序
  - `MACOSX_BUNDLE`: 可选，macOS 特定选项，创建应用程序包
  - `EXCLUDE_FROM_ALL`: 可选，排除在默认构建之外
  - `[source1] [source2] ...`: 源文件列表
- **功能**: 创建可执行文件目标

**file()**
- **签名**: `file(<command> [<args>...])`
- **参数**: 
  - `<command>`: 文件操作命令（GLOB, GLOB_RECURSE, COPY, READ, WRITE, APPEND, MAKE_DIRECTORY 等）
  - `<args>...`: 命令参数
- **功能**: 执行各种文件操作

### 4.2 静态库

```cmake
# 添加静态库
add_library(
    mylib STATIC
    src/lib.c
    src/lib_helper.c
)

# 链接静态库
target_link_libraries(${PROJECT_NAME} PRIVATE mylib)
```

##### 函数说明

**add_library()**
- **签名**: `add_library(<name> [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL] [source1] [source2] ...)`
- **参数**: 
  - `<name>`: 库名称
  - `STATIC | SHARED | MODULE`: 库类型
    - `STATIC`: 静态库，编译时链接，文件扩展名为 `.lib` (Windows) 或 `.a` (Unix)
    - `SHARED`: 动态库，运行时链接，文件扩展名为 `.dll` (Windows)、`.so` (Unix) 或 `.dylib` (macOS)
    - `MODULE`: 模块库，运行时动态加载，文件扩展名同 SHARED
  - `EXCLUDE_FROM_ALL`: 可选，排除在默认构建之外
  - `[source1] [source2] ...`: 源文件列表
- **功能**: 创建库目标

**target_link_libraries()**
- **签名**: `target_link_libraries(<target> [BEFORE] <item>... [<item>...]...)`
- **参数**: 
  - `<target>`: 目标名称
  - `BEFORE`: 可选，添加到现有库的前面
  - `<item>...`: 要链接的库或目标列表
- **功能**: 为目标链接库

### 4.3 动态库

```cmake
# 添加动态库
add_library(
    mylib SHARED
    src/lib.c
    src/lib_helper.c
)

# 链接动态库
target_link_libraries(${PROJECT_NAME} PRIVATE mylib)
```

### 4.4 目标属性

```cmake
# 设置目标属性
set_target_properties(
    ${PROJECT_NAME}
    PROPERTIES
        OUTPUT_NAME "my_app"
        SUFFIX ".out"
        VERSION "1.0.0"
        SOVERSION "1"
)

# 获取目标属性
get_target_property(OUTPUT_NAME ${PROJECT_NAME} OUTPUT_NAME)
message("Output name: ${OUTPUT_NAME}")
```

##### 函数说明

**set_target_properties()**
- **签名**: `set_target_properties(<target>... PROPERTIES <property1> <value1> [<property2> <value2>...] ...)`
- **参数**: 
  - `<target>...`: 目标名称列表
  - `PROPERTIES`: 固定关键字
  - `<property1> <value1>`: 属性名和属性值
    - **常用属性**:
      - `OUTPUT_NAME`: 目标输出文件名
      - `SUFFIX`: 目标文件后缀
      - `VERSION`: 目标版本号
      - `SOVERSION`: 目标 API 版本号
      - `CMAKE_C_STANDARD`: C 标准版本
      - `CMAKE_CXX_STANDARD`: C++ 标准版本
      - `C_STANDARD_REQUIRED`: 是否强制使用指定的 C 标准
      - `CXX_STANDARD_REQUIRED`: 是否强制使用指定的 C++ 标准
      - `COMPILE_DEFINITIONS`: 编译定义
      - `COMPILE_OPTIONS`: 编译选项
      - `INCLUDE_DIRECTORIES`: 包含目录
      - `LINK_LIBRARIES`: 链接库
      - `LINK_OPTIONS`: 链接选项
      - `POSITION_INDEPENDENT_CODE`: 是否生成位置无关代码 (PIC)
      - `ARCHIVE_OUTPUT_DIRECTORY`: 静态库输出目录
      - `LIBRARY_OUTPUT_DIRECTORY`: 动态库输出目录
      - `RUNTIME_OUTPUT_DIRECTORY`: 可执行文件输出目录
      - `WIN32_EXECUTABLE`: 是否为 Windows GUI 应用程序
      - `MACOSX_BUNDLE`: 是否为 macOS 应用程序包
      - `EXPORT_NAME`: 导出名称
      - `INTERFACE_INCLUDE_DIRECTORIES`: 接口包含目录
      - `INTERFACE_COMPILE_DEFINITIONS`: 接口编译定义
- **功能**: 设置目标的属性

**get_target_property()**
- **签名**: `get_target_property(<variable> <target> <property>)`
- **参数**: 
  - `<variable>`: 存储属性值的变量名
  - `<target>`: 目标名称
  - `<property>`: 属性名
- **功能**: 获取目标的属性值

## 5. 依赖管理

### 5.1 查找包

```cmake
# 查找包
find_package(Threads REQUIRED)
find_package(OpenSSL REQUIRED)

# 链接找到的包
target_link_libraries(${PROJECT_NAME} PRIVATE Threads::Threads OpenSSL::SSL)
```

##### 函数说明

**find_package()**
- **签名**: `find_package(<PackageName> [version] [EXACT] [QUIET] [MODULE] [REQUIRED] [[COMPONENTS] [components...]])`
- **参数**: 
  - `<PackageName>`: 包名称
  - `[version]`: 可选，版本要求
  - `EXACT`: 可选，精确匹配版本
  - `QUIET`: 可选，安静模式，不输出查找结果
  - `MODULE`: 可选，仅使用模块模式查找
  - `REQUIRED`: 可选，找不到包时产生错误
  - `[COMPONENTS] [components...]`: 可选，包的组件列表
- **功能**: 查找并加载外部包

### 5.2 子目录

```cmake
# 添加子目录
add_subdirectory(src)
add_subdirectory(test)

# 链接子目录中的库
target_link_libraries(${PROJECT_NAME} PRIVATE mylib)
```

##### 函数说明

**add_subdirectory()**
- **签名**: `add_subdirectory(source_dir [binary_dir] [EXCLUDE_FROM_ALL])`
- **参数**: 
  - `source_dir`: 源目录路径
  - `[binary_dir]`: 可选，二进制目录路径
  - `EXCLUDE_FROM_ALL`: 可选，排除在默认构建之外
- **功能**: 添加子目录到构建系统

### 5.3 外部项目

```cmake
# 使用 ExternalProject
include(ExternalProject)

ExternalProject_Add(
    external_lib
    GIT_REPOSITORY "https://github.com/example/lib.git"
    GIT_TAG "v1.0.0"
    CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/external
    BUILD_COMMAND ${CMAKE_COMMAND} --build .
    INSTALL_COMMAND ${CMAKE_COMMAND} --install .
)

# 依赖外部项目
add_dependencies(${PROJECT_NAME} external_lib)
```

##### 函数说明

**include()**
- **签名**: `include(<file|module> [OPTIONAL] [RESULT_VARIABLE <VAR>] [NO_POLICY_SCOPE])`
- **参数**: 
  - `<file|module>`: 文件路径或模块名称
  - `OPTIONAL`: 可选，文件不存在时不产生错误
  - `RESULT_VARIABLE <VAR>`: 可选，存储包含结果的变量
  - `NO_POLICY_SCOPE`: 可选，不应用策略作用域
- **功能**: 包含 CMake 文件或模块

**ExternalProject_Add()**
- **签名**: `ExternalProject_Add(<name> [<option>...])`
- **参数**: 
  - `<name>`: 外部项目名称
  - `<option>...`: 外部项目选项（GIT_REPOSITORY, GIT_TAG, CMAKE_ARGS, BUILD_COMMAND, INSTALL_COMMAND 等）
- **功能**: 添加外部项目到构建系统

**add_dependencies()**
- **签名**: `add_dependencies(<target> [<target-dependency>]...)`
- **参数**: 
  - `<target>`: 目标名称
  - `[<target-dependency>]...`: 依赖的目标列表
- **功能**: 为目标添加依赖关系

## 6. 构建配置

### 6.1 构建类型

```cmake
# 设置默认构建类型
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Build type" FORCE)
endif()

# 构建类型选项
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "RelWithDebInfo" "MinSizeRel")
```

##### 函数说明

**set_property()**
- **签名**: `set_property(<GLOBAL | DIRECTORY [dir] | TARGET [targets...] | SOURCE [sources...] | TEST [tests...] | CACHE [entries...]> [APPEND] PROPERTY <name> <value>...)
- **参数**: 
  - `<GLOBAL | DIRECTORY | TARGET | SOURCE | TEST | CACHE>`: 属性作用域
  - `[dir] | [targets...] | [sources...] | [tests...] | [entries...]`: 作用域内的对象
  - `APPEND`: 可选，追加到现有属性值
  - `PROPERTY <name> <value>...`: 属性名和属性值
- **功能**: 设置属性

### 6.2 安装配置

```cmake
# 安装可执行文件
install(
    TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

# 安装头文件
install(
    DIRECTORY include/
    DESTINATION include
)

# 安装配置文件
install(
    FILES config.ini
    DESTINATION etc
)
```

##### 函数说明

**install()**
- **签名**: `install(<targets|files|directories|scripts> ...)`
- **参数**: 
  - `<targets|files|directories|scripts>`: 安装类型
  - 具体参数根据安装类型不同而不同
- **功能**: 定义安装规则

### 6.3 打包配置

```cmake
# 生成打包文件
include(CPack)

set(CPACK_PACKAGE_NAME "MyProject")
set(CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A sample project")
set(CPACK_PACKAGE_CONTACT "author@example.com")

# 生成不同格式的包
set(CPACK_GENERATOR "ZIP;TGZ")
```

## 7. 实用命令

### 7.1 文件操作

```cmake
# 创建目录
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/output)

# 复制文件
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/config.ini DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

# 读取文件内容
file(READ ${CMAKE_CURRENT_SOURCE_DIR}/version.txt VERSION_CONTENT)

# 写入文件
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/build_info.txt "Build date: ${CMAKE_BUILD_DATE}")

# 追加文件
file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/build_info.txt "\nBuild type: ${CMAKE_BUILD_TYPE}")

# 生成文件
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/config.h.in
    ${CMAKE_CURRENT_BINARY_DIR}/config.h
)
```

##### 函数说明

**file()**
- **签名**: `file(<command> [<args>...])`
- **参数**: 
  - `<command>`: 文件操作命令
    - `MAKE_DIRECTORY`: 创建目录
    - `COPY`: 复制文件或目录
    - `READ`: 读取文件内容
    - `WRITE`: 写入文件内容
    - `APPEND`: 追加文件内容
    - `GLOB`: 匹配文件（非递归）
    - `GLOB_RECURSE`: 递归匹配文件
    - `RENAME`: 重命名文件
    - `REMOVE`: 删除文件
    - `REMOVE_RECURSE`: 递归删除文件或目录
    - `EXISTS`: 检查文件或目录是否存在
    - `IS_DIRECTORY`: 检查是否为目录
    - `SIZE`: 获取文件大小
    - `TIMESTAMP`: 获取文件时间戳
  - `<args>...`: 命令参数
- **功能**: 执行各种文件操作

**configure_file()**
- **签名**: `configure_file(<input> <output> [COPYONLY] [ESCAPE_QUOTES] [@ONLY])`
- **参数**: 
  - `<input>`: 输入文件路径
  - `<output>`: 输出文件路径
  - `COPYONLY`: 可选，仅复制文件，不进行变量替换
  - `ESCAPE_QUOTES`: 可选，转义引号
  - `@ONLY`: 可选，仅替换 @var@ 形式的变量
- **功能**: 生成配置文件，替换其中的变量

### 7.2 执行命令

```cmake
# 执行命令
execute_process(
    COMMAND git rev-parse HEAD
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_COMMIT
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

message("Git commit: ${GIT_COMMIT}")
```

##### 函数说明

**execute_process()**
- **签名**: `execute_process(COMMAND <cmd1> [<arg1>...] [COMMAND <cmd2> [<arg2>...]] ... [WORKING_DIRECTORY <dir>] [TIMEOUT <seconds>] [RESULT_VARIABLE <var>] [OUTPUT_VARIABLE <var>] [ERROR_VARIABLE <var>] [INPUT_FILE <file>] [OUTPUT_FILE <file>] [ERROR_FILE <file>] [OUTPUT_QUIET] [ERROR_QUIET] [OUTPUT_STRIP_TRAILING_WHITESPACE] [ERROR_STRIP_TRAILING_WHITESPACE])`
- **参数**: 
  - `COMMAND <cmd1> [<arg1>...]`: 要执行的命令及其参数
  - `WORKING_DIRECTORY <dir>`: 可选，工作目录
  - `TIMEOUT <seconds>`: 可选，超时时间
  - `RESULT_VARIABLE <var>`: 可选，存储命令执行结果的变量
  - `OUTPUT_VARIABLE <var>`: 可选，存储命令输出的变量
  - `ERROR_VARIABLE <var>`: 可选，存储命令错误输出的变量
  - `INPUT_FILE <file>`: 可选，输入文件
  - `OUTPUT_FILE <file>`: 可选，输出文件
  - `ERROR_FILE <file>`: 可选，错误输出文件
  - `OUTPUT_QUIET`: 可选，静默输出
  - `ERROR_QUIET`: 可选，静默错误输出
  - `OUTPUT_STRIP_TRAILING_WHITESPACE`: 可选，去除输出末尾的空白字符
  - `ERROR_STRIP_TRAILING_WHITESPACE`: 可选，去除错误输出末尾的空白字符
- **功能**: 执行外部命令

### 7.3 消息输出

```cmake
# 普通消息
message("Hello, CMake!")

# 状态消息
message(STATUS "Configuring project...")

# 警告消息
message(WARNING "This is a warning!")

# 错误消息
message(FATAL_ERROR "This is an error!")
```

### 7.4 路径操作

```cmake
# 获取当前目录
set(CURRENT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

# 获取父目录
get_filename_component(PARENT_DIR ${CURRENT_DIR} DIRECTORY)

# 组合路径
set(FULL_PATH "${CURRENT_DIR}/src")

# 规范化路径
cmake_path(NORMALIZE "${FULL_PATH}" OUTPUT_VARIABLE NORMALIZED_PATH)

# 路径转换
cmake_path(ABSOLUTE_PATH "relative/path" BASE_DIRECTORY "${CURRENT_DIR}" OUTPUT_VARIABLE ABS_PATH)
```

##### 函数说明

**get_filename_component()**
- **签名**: `get_filename_component(<var> <filename> <mode> [CACHE])`
- **参数**: 
  - `<var>`: 存储结果的变量名
  - `<filename>`: 文件名或路径
  - `<mode>`: 操作模式（DIRECTORY, NAME, EXT, NAME_WE, REALPATH, ABSOLUTE）
  - `CACHE`: 可选，将结果缓存
- **功能**: 从文件名中提取组件

**cmake_path()**
- **签名**: `cmake_path(<command> [<args>...])`
- **参数**: 
  - `<command>`: 路径操作命令（NORMALIZE, ABSOLUTE_PATH, RELATIVE_PATH, APPEND, REMOVE_FILENAME, GET_FILENAME, GET_EXTENSION, REPLACE_EXTENSION 等）
  - `<args>...`: 命令参数
- **功能**: 执行各种路径操作

## 8. 常见问题与解决方案

### 8.1 路径分隔符问题

```cmake
# 跨平台路径
set(CROSS_PLATFORM_PATH "${CMAKE_CURRENT_SOURCE_DIR}/src")

# 或使用 cmake_path
cmake_path(APPEND CROSS_PLATFORM_PATH "src")
```

### 8.2 条件编译

```cmake
# 根据平台条件编译
if(WIN32)
    target_compile_definitions(${PROJECT_NAME} PRIVATE WINDOWS_BUILD)
elif(UNIX)
    target_compile_definitions(${PROJECT_NAME} PRIVATE UNIX_BUILD)
endif()

# 根据编译器条件编译
if(CMAKE_C_COMPILER_ID MATCHES "GNU")
    target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra)
elif(CMAKE_C_COMPILER_ID MATCHES "MSVC")
    target_compile_options(${PROJECT_NAME} PRIVATE /W4)
endif()
```

##### 函数说明

**target_compile_definitions()**
- **签名**: `target_compile_definitions(<target> [BEFORE] <INTERFACE|PUBLIC|PRIVATE> [items1...] [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])`
- **参数**: 
  - `<target>`: 目标名称
  - `BEFORE`: 可选，添加到现有定义的前面
  - `<INTERFACE|PUBLIC|PRIVATE>`: 编译定义的可见性
    - `PRIVATE`: 仅当前目标可见
    - `PUBLIC`: 当前目标和依赖于当前目标的目标可见
    - `INTERFACE`: 仅依赖于当前目标的目标可见
  - `[items1...]`: 编译定义列表
- **功能**: 为目标添加编译定义

### 8.3 性能优化

```cmake
# 启用并行构建
if(NOT DEFINED CMAKE_BUILD_PARALLEL_LEVEL)
    include(ProcessorCount)
    ProcessorCount(N)
    if(N GREATER 1)
        set(CMAKE_BUILD_PARALLEL_LEVEL ${N} CACHE STRING "Number of parallel build jobs" FORCE)
    endif()
endif()

# 启用编译缓存
find_program(CCACHE_FOUND ccache)
if(CCACHE_FOUND)
    set(CMAKE_C_COMPILER_LAUNCHER ${CCACHE_FOUND})
    set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE_FOUND})
endif()
```

##### 函数说明

**find_program()**
- **签名**: `find_program(<VAR> name1 [path1 path2 ...] [DOC "cache documentation"] [REQUIRED] [NO_DEFAULT_PATH] [PATHS path1 path2 ...] [PATH_SUFFIXES suffix1 suffix2 ...])`
- **参数**: 
  - `<VAR>`: 存储找到的程序路径的变量名
  - `name1`: 要查找的程序名称
  - `[path1 path2 ...]`: 可选，查找路径
  - `DOC "cache documentation"`: 可选，缓存文档
  - `REQUIRED`: 可选，找不到程序时产生错误
  - `NO_DEFAULT_PATH`: 可选，不使用默认路径
  - `PATHS path1 path2 ...`: 可选，查找路径
  - `PATH_SUFFIXES suffix1 suffix2 ...`: 可选，路径后缀
- **功能**: 查找可执行程序

## 9. 最佳实践

### 9.1 项目结构

```
project/
├── CMakeLists.txt          # 主配置文件
├── include/                # 公共头文件
│   └── project/
│       └── header.h
├── src/                    # 源代码
│   ├── CMakeLists.txt      # 子目录配置
│   ├── main.c
│   └── lib/
│       ├── CMakeLists.txt  # 库配置
│       └── lib.c
├── test/                   # 测试代码
│   ├── CMakeLists.txt
│   └── test_lib.c
└── extern/                 # 外部依赖
    └── CMakeLists.txt
```

### 9.2 命名约定

- **变量**: 使用大写字母和下划线 (`MY_VARIABLE`)
- **目标**: 使用小写字母和连字符 (`my-target`)
- **函数**: 使用小写字母和下划线 (`my_function`)
- **宏**: 使用大写字母和下划线 (`MY_MACRO`)

### 9.3 避免的做法

1. **避免使用全局命令**: 优先使用目标特定的命令（如 `target_include_directories` 而非 `include_directories`）
2. **避免硬编码路径**: 使用 CMake 变量和生成器表达式
3. **避免使用 `GLOB` 递归**: 显式列出源文件或使用 `GLOB_RECURSE` 谨慎
4. **避免修改 `CMAKE_*` 变量**: 除非必要，否则不要修改 CMake 内置变量
5. **避免使用 `file(TOUCH)`**: 这会导致不必要的重新构建

## 10. 示例项目

### 10.1 简单可执行文件

**CMakeLists.txt**:

```cmake
cmake_minimum_required(VERSION 3.13)
project(hello_world VERSION 1.0)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(hello_world src/main.c)

target_include_directories(hello_world PRIVATE include)

target_compile_options(hello_world PRIVATE -Wall -Wextra)
```

**src/main.c**:

```c
#include <stdio.h>

int main() {
    printf("Hello, CMake!\n");
    return 0;
}
```

### 10.2 库和可执行文件

**CMakeLists.txt**:

```cmake
cmake_minimum_required(VERSION 3.13)
project(my_app VERSION 1.0)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# 添加库
add_library(my_lib STATIC src/lib.c)
target_include_directories(my_lib PUBLIC include)

# 添加可执行文件
add_executable(my_app src/main.c)
target_link_libraries(my_app PRIVATE my_lib)
target_compile_options(my_app PRIVATE -Wall -Wextra)
```

## 11. 参考资料

- [CMake 官方文档](https://cmake.org/documentation/)
- [CMake 教程](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
- [CMake 命令参考](https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html)
- [CMake 变量参考](https://cmake.org/cmake/help/latest/manual/cmake-variables.7.html)
- [CMake 属性参考](https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html)

## 12. 总结

CMake 是一个强大而灵活的构建系统生成工具，掌握其常用语法对于跨平台项目开发至关重要。本文介绍了 CMake 的核心概念和常用语法，包括：

- 基础语法（变量、条件语句、循环语句、函数和宏）
- 项目配置（项目定义、包含目录、编译选项）
- 构建目标（可执行文件、静态库、动态库）
- 依赖管理（查找包、子目录、外部项目）
- 构建配置（构建类型、安装配置、打包配置）
- 实用命令（文件操作、执行命令、消息输出）
- 常见问题与解决方案
- 最佳实践

通过本文的学习，开发者应该能够快速上手 CMake 并应用于实际项目中。对于更复杂的场景，建议参考官方文档和其他高级教程。