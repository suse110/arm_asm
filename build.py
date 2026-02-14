#!/usr/bin/env python3
"""
Build script for ARM embedded OS projects.

Usage:
    build.py <board> <project> [rebuild|clean]
    build.py all <any> [rebuild|clean]  # Build all projects

Examples:
    build.py stm32f4xx main           # Build stm32f4xx/main
    build.py stm32f4xx main rebuild   # Clean and rebuild stm32f4xx/main
    build.py stm32f4xx main clean     # Clean stm32f4xx/main
    build.py all all                  # Build all projects
    build.py all any rebuild          # Clean and rebuild all projects

Supported boards:
    - stm32f10x
    - stm32f4xx
    - stm32l5xx
    - lm3s811
"""

import os
import sys
import subprocess
import argparse
from pathlib import Path


class Colors:
    """ANSI color codes for terminal output."""

    RESET = "\033[0m"
    RED = "\033[91m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    BLUE = "\033[94m"
    MAGENTA = "\033[95m"
    CYAN = "\033[96m"
    BOLD = "\033[1m"


def print_header(message):
    """Print a formatted header message."""
    print(f"\n{Colors.BOLD}{Colors.CYAN}{'=' * 60}{Colors.RESET}")
    print(f"{Colors.BOLD}{Colors.CYAN}{message}{Colors.RESET}")
    print(f"{Colors.BOLD}{Colors.CYAN}{'=' * 60}{Colors.RESET}\n")


def print_success(message):
    """Print a success message."""
    print(f"{Colors.GREEN}[OK] {message}{Colors.RESET}")


def print_error(message):
    """Print an error message."""
    print(f"{Colors.RED}[ERROR] {message}{Colors.RESET}")


def print_info(message):
    """Print an info message."""
    print(f"{Colors.BLUE}[INFO] {message}{Colors.RESET}")


def print_warning(message):
    """Print a warning message."""
    print(f"{Colors.YELLOW}[WARN] {message}{Colors.RESET}")


def get_project_path(board, project):
    """Get the project path relative to this script."""
    script_dir = Path(__file__).parent
    project_dir = script_dir / "main" / "build" / board / project

    # Check if build.ninja exists
    build_ninja_path = project_dir / "build.ninja"
    if not project_dir.exists() or not build_ninja_path.exists():
        # If build directory doesn't exist or build.ninja is missing, create and run cmake
        print_info(f"Build directory not found or build.ninja missing: {project_dir}")
        print_info("Creating build directory and running CMake...")
        project_dir.mkdir(parents=True, exist_ok=True)
        # Run cmake from root directory, pointing to build directory
        cmake_cmd = ["cmake", "-G", "Ninja", f"-DBUILD_PROJECT={board}/{project}", "-B", str(project_dir), "-S", str(script_dir / "main")]
        print_header(f"Running: {' '.join(cmake_cmd)}")
        try:
            # Set CMAKE_MAKE_PROGRAM to use our ninja.exe
            env = os.environ.copy()
            ninja_path = str(script_dir / "tools" / "ninja" / "ninja.exe")
            env["CMAKE_MAKE_PROGRAM"] = ninja_path
            print_info(f"Using ninja: {ninja_path}")
            result = subprocess.run(cmake_cmd, capture_output=True, text=True, env=env)
            if result.returncode != 0:
                print_error(f"CMake failed: {result.stderr}")
                return None
            print_success("CMake successful")
        except Exception as e:
            print_error(f"Failed to run CMake: {e}")
            return None
    return project_dir


def run_ninja(project_path, target=None):
    """Run ninja command in the project directory.

    Args:
        project_path: Path to the project build directory
        target: Ninja target (None for default build, 'clean' for clean, or specific target name)

    Returns:
        bool: True if successful, False otherwise
    """
    # Use our ninja.exe
    script_dir = Path(__file__).parent
    ninja_cmd = str(script_dir / "tools" / "ninja" / "ninja.exe")

    # Check if ninja is available
    try:
        subprocess.run([ninja_cmd, "--version"], capture_output=True, check=True)
    except (subprocess.CalledProcessError, FileNotFoundError):
        print_error(f"'{ninja_cmd}' not found. Please check if ninja.exe exists in tools/ninja/")
        return False

    # Build command
    cmd = [ninja_cmd]
    if target == "clean":
        cmd.append("-t")
        cmd.append("clean")
    elif target:
        cmd.append(target)
    
    print_header(f"Running: {' '.join(cmd)}")

    # Execute ninja
    result = subprocess.run(cmd, cwd=project_path, env=os.environ.copy())

    return result.returncode == 0


def build_project(board, project, mode="build"):
    """Build a project.

    Args:
        board: Board name (e.g., stm32f4xx)
        project: Project name (e.g., main)
        mode: Build mode - 'build', 'rebuild', or 'clean'

    Returns:
        bool: True if successful, False otherwise
    """
    project_path = get_project_path(board, project)

    if project_path is None:
        print_error(f"Failed to prepare build directory")
        print_info("Please check if CMake is installed and try again.")
        return False

    # Map board/project to CMake target name
    target_map = {
        "stm32f4xx/main": "stm32f4xx_main.elf",
        "stm32f10x/dc-uart": "stm32f10x_dc_uart.elf",
        "lm3s811/main": "lm3s811_main.elf",
        "stm32f4xx/FreeRTOS_demo": "freertos_demo.elf",
        "stm32f4xx/NetduinoPlus2": "netduinoplus2.elf",
        "stm32l5xx/main": "stm32l5xx_main.elf"
    }
    
    target_key = f"{board}/{project}"
    if target_key not in target_map:
        print_error(f"Target not found for {target_key}")
        print_info("Available targets:")
        for key in target_map:
            print(f"  - {key}")
        return False
    
    target_name = target_map[target_key]
    project_name = f"{board}/{project}"

    if mode == "clean":
        print_header(f"Cleaning: {project_name}")
        success = run_ninja(project_path, "clean")
        if success:
            print_success(f"Clean successful: {project_name}")
        else:
            print_error(f"Clean failed: {project_name}")
        return success

    elif mode == "rebuild":
        print_header(f"Rebuilding: {project_name}")

        # Clean first
        print_info("Step 1/2: Cleaning...")
        clean_success = run_ninja(project_path, "clean")
        if not clean_success:
            print_error("Clean failed, aborting rebuild.")
            return False

        # Build
        print_info(f"Step 2/2: Building {target_name}...")
        build_success = run_ninja(project_path, target_name)
        if build_success:
            print_success(f"Rebuild successful: {project_name}")
        else:
            print_error(f"Rebuild failed: {project_name}")
        return build_success

    else:  # build
        print_header(f"Building: {project_name}")
        success = run_ninja(project_path, target_name)
        if success:
            print_success(f"Build successful: {project_name}")

            # Show output binary
            print_info(f"Output directory: {project_path}")
            binary = project_path / target_name
            if binary.exists():
                size = binary.stat().st_size
                print_info(f"Generated binary:")
                print(f"  - {binary.name} ({size:,} bytes)")
        else:
            print_error(f"Build failed: {project_name}")
        return success


def build_all_projects(action="build"):
    """Build all projects.

    Args:
        action: Build action - 'build', 'rebuild', or 'clean'

    Returns:
        bool: True if all projects built successfully, False otherwise
    """
    # Map board/project to CMake target name
    target_map = {
        "stm32f4xx/main": "stm32f4xx_main.elf",
        "stm32f10x/dc-uart": "stm32f10x_dc_uart.elf",
        "lm3s811/main": "lm3s811_main.elf",
        "stm32f4xx/FreeRTOS_demo": "freertos_demo.elf",
        "stm32f4xx/NetduinoPlus2": "netduinoplus2.elf",
        "stm32l5xx/main": "stm32l5xx_main.elf"
    }

    print_header(f"Building all projects with action: {action}")
    all_success = True

    # Process each project
    for i, (key, _) in enumerate(target_map.items()):
        board, project = key.split("/")
        print(f"\n{Colors.BOLD}{Colors.CYAN}=== Project {i+1}/{len(target_map)}: {key} ==={Colors.RESET}")
        success = build_project(board, project, action)
        if not success:
            all_success = False
        print()

    return all_success


def main():
    """Main entry point."""
    parser = argparse.ArgumentParser(
        description="Build script for ARM embedded OS projects",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )

    parser.add_argument("board", help="Board name (e.g., stm32f4xx) or 'all' to build all projects")
    parser.add_argument("project", help="Project name (e.g., main) - ignored when board is 'all'")
    parser.add_argument(
        "action",
        nargs="?",
        choices=["build", "rebuild", "clean"],
        default="build",
        help="Build action (default: build)",
    )
    parser.add_argument("-v", "--version", action="version", version="%(prog)s 1.0.0")

    args = parser.parse_args()

    # Display banner
    print(f"{Colors.BOLD}{Colors.MAGENTA}ARM Embedded OS Build Tool{Colors.RESET}")

    # Check if we're building all projects
    if args.board == "all":
        print(f"{Colors.CYAN}Action: {args.action} | Building all projects{Colors.RESET}")
        success = build_all_projects(args.action)
    else:
        print(
            f"{Colors.CYAN}Board: {args.board} | Project: {args.project} | Action: {args.action}{Colors.RESET}"
        )
        # Build the specific project
        success = build_project(args.board, args.project, args.action)

    # Final message
    print()
    if success:
        print_success("All operations completed successfully!")
        return 0
    else:
        print_error("Build failed with errors.")
        return 1


if __name__ == "__main__":
    sys.exit(main())
