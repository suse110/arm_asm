# Build Script - Quick Reference

One-click build wrapper for ARM embedded OS projects using Ninja-based build system with CMake configuration.

## Usage

```bash
python build.py <board> <project> [action]
python build.py all <any> [action]  # Build all projects
```

### Arguments

- `board`: Board/chip family name or `all` to build all projects
- `project`: Project name (ignored when `board` is `all`)
- `action`: (optional) One of `build`, `rebuild`, `clean` (default: `build`)

## Examples

```bash
# Build stm32f4xx/main project
python build.py stm32f4xx main

# Rebuild (clean + build) stm32f4xx/main
python build.py stm32f4xx main rebuild

# Clean stm32f4xx/main
python build.py stm32f4xx main clean

# Build FreeRTOS demo
python build.py stm32f4xx FreeRTOS_demo

# Build STM32L5xx main project
python build.py stm32l5xx main

# Build all projects
python build.py all all

# Rebuild all projects
python build.py all any rebuild

# Clean all projects
python build.py all any clean

# Show all available projects (use invalid names)
python build.py any invalid
```

## Available Boards

| Board         | Projects                                           |
|---------------|----------------------------------------------------|
| `stm32f4xx`   | main, FreeRTOS_demo, NetduinoPlus2                 |
| `stm32l5xx`   | main                                               |
| `stm32f10x`   | dc-uart                                            |
| `lm3s811`     | main                                               |

## Requirements

- Python 3.6+
- CMake 3.16+
- ARM GCC toolchain (arm-none-eabi-gcc)

> **Note:** Ninja build system is included in the tools directory (`tools/ninja/ninja.exe` for Windows).

## Build Process

1. **CMake Configuration**: The script automatically runs CMake when needed to generate Ninja build files
2. **Parallel Build**: Uses Ninja for fast parallel compilation
3. **Per-Project Build Directories**: Each project has its own build directory at `main/build/<board>/<project>/`
4. **Incremental Build**: Only rebuilds modified files

## Output

The script provides:

- **Color-coded output**: Blue (info), Green (success), Red (error), Yellow (warning)
- **Build artifacts**: Located in `main/build/<board>/<project>/`
- **Binary files**: .elf, .bin, .hex with size information
- **Build Progress**: Shows current project and overall progress when building all projects

## Exit Codes

- `0`: Success
- `1`: Build failed

## Troubleshooting

### Common Issues

1. **CMake not found**: Ensure CMake is installed and added to your system PATH
2. **ARM toolchain not found**: Ensure arm-none-eabi-gcc is installed and added to your system PATH
3. **Build directory permission errors**: Ensure you have write permissions to the build directory
4. **Project not found**: Check if the board/project combination is listed in the available boards table

### Debugging

To see detailed build output, run the script with verbose output enabled:

```bash
# Enable verbose output
python build.py stm32f4xx main
```

The script will show CMake commands and Ninja build output for debugging purposes.
