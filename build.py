#!/usr/bin/env python3
"""
ARM ASM Build Script
Provides detailed build logging with color-coded status output
"""

import subprocess
import sys
import os
import time
import re
from pathlib import Path
from datetime import datetime


class BuildLogger:
    """Handles build logging with color output and file logging"""

    # ANSI color codes
    COLORS = {
        "RESET": "\033[0m",
        "RED": "\033[91m",
        "GREEN": "\033[92m",
        "YELLOW": "\033[93m",
        "BLUE": "\033[94m",
        "MAGENTA": "\033[95m",
        "CYAN": "\033[96m",
        "WHITE": "\033[97m",
        "BOLD": "\033[1m",
    }

    def __init__(self, log_file):
        self.log_file = log_file
        self.log_fp = None
        self.stats = {"compiled": 0, "warnings": 0, "errors": 0, "failed_files": []}

    def __enter__(self):
        self.log_fp = open(self.log_file, "w", encoding="utf-8")
        self.log_fp.write(
            f"Build Log - {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n"
        )
        self.log_fp.write("=" * 80 + "\n\n")
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.log_fp:
            self.log_fp.write("\n" + "=" * 80 + "\n")
            self.log_fp.write(f"Build Summary:\n")
            self.log_fp.write(f"  Files compiled: {self.stats['compiled']}\n")
            self.log_fp.write(f"  Warnings: {self.stats['warnings']}\n")
            self.log_fp.write(f"  Errors: {self.stats['errors']}\n")
            if self.stats["failed_files"]:
                self.log_fp.write(
                    f"  Failed files: {', '.join(self.stats['failed_files'])}\n"
                )
            self.log_fp.close()

    def colorize(self, text, color):
        """Add color to text"""
        # Disable colors for Windows CMD compatibility
        return text

    def log(self, message, level="INFO", color=None):
        """Log message to console and file"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        log_line = f"[{timestamp}] [{level}] {message}"

        # Write to file
        if self.log_fp:
            self.log_fp.write(log_line + "\n")
            self.log_fp.flush()

        # Print to console with color
        if color:
            print(self.colorize(log_line, color))
        else:
            print(log_line)

    def info(self, message):
        self.log(message, "INFO", "BLUE")

    def success(self, message):
        self.log(message, "PASS", "GREEN")

    def warning(self, message):
        self.log(message, "WARN", "YELLOW")
        self.stats["warnings"] += 1

    def error(self, message):
        self.log(message, "FAIL", "RED")
        self.stats["errors"] += 1

    def file_compiled(self, filename):
        self.stats["compiled"] += 1
        self.success(f"✓ {filename}")

    def file_failed(self, filename, error_msg):
        self.stats["failed_files"].append(filename)
        self.error(f"✗ {filename}")
        self.error(f"  Error: {error_msg}")


class BuildRunner:
    """Manages the build process"""

    def __init__(self, build_dir, logger):
        self.build_dir = Path(build_dir)
        self.logger = logger
        self.project_root = self.build_dir.parent

    def run_command(self, cmd, cwd=None, capture_output=True):
        """Run a command and log output"""
        if cwd is None:
            cwd = self.build_dir

        self.logger.info(f"Running: {' '.join(cmd)}")
        self.logger.info(f"Working directory: {cwd}")

        try:
            if capture_output:
                process = subprocess.Popen(
                    cmd,
                    cwd=cwd,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.STDOUT,
                    universal_newlines=True,
                    bufsize=1,
                )

                # Stream output in real-time
                if process.stdout:
                    for line in process.stdout:
                        line = line.rstrip()
                        self.parse_build_output(line)

                process.wait()
                return process.returncode
            else:
                result = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True)
                if result.stdout:
                    for line in result.stdout.split("\n"):
                        if line:
                            self.parse_build_output(line)
                if result.stderr:
                    for line in result.stderr.split("\n"):
                        if line:
                            self.logger.error(line)
                return result.returncode

        except Exception as e:
            self.logger.error(f"Failed to run command: {e}")
            return 1

    def parse_build_output(self, line):
        """Parse build output and categorize messages"""
        # Skip empty lines
        if not line.strip():
            return

        # Log the raw line
        if self.logger.log_fp:
            self.logger.log_fp.write(line + "\n")
            self.logger.log_fp.flush()

        # Check for compilation progress
        if "Building C object" in line or "Building ASM object" in line:
            # Extract filename
            match = re.search(r"([^/\\]+\.(c|s|cpp|cc))\.obj", line)
            if match:
                filename = match.group(1)
                print(f"  Compiling: {filename}...", end=" ", flush=True)
            return

        # Check for success indicator
        if "[100%] Built target" in line or "Linking C executable" in line:
            self.logger.success(line)
            return

        # Check for errors
        if "error:" in line.lower() or "undefined reference" in line.lower():
            self.logger.error(line)
            return

        # Check for warnings
        if "warning:" in line.lower():
            self.logger.warning(line)
            return

        # Regular output
        print(line)

    def cmake_configure(self, generator="Unix Makefiles"):
        """Configure with CMake"""
        self.logger.info("=" * 80)
        self.logger.info("STEP 1: CMake Configuration")
        self.logger.info("=" * 80)

        cmake_cmd = [
            "cmake",
            "-G",
            generator,
            f"-DCMAKE_MAKE_PROGRAM={self.get_make_program()}",
            "..",
        ]

        start_time = time.time()
        retcode = self.run_command(cmake_cmd, cwd=self.build_dir)
        elapsed = time.time() - start_time

        if retcode != 0:
            self.logger.error(f"CMake configuration FAILED (took {elapsed:.1f}s)")
            return False

        self.logger.success(f"CMake configuration PASSED (took {elapsed:.1f}s)")
        return True

    def build(self, jobs=None):
        """Run the build"""
        self.logger.info("=" * 80)
        self.logger.info("STEP 2: Building Project")
        self.logger.info("=" * 80)

        build_cmd = ["cmake", "--build", "."]
        if jobs:
            build_cmd.extend(["-j", str(jobs)])

        start_time = time.time()
        retcode = self.run_command(build_cmd, cwd=self.build_dir)
        elapsed = time.time() - start_time

        if retcode != 0:
            self.logger.error(f"Build FAILED (took {elapsed:.1f}s)")
            return False

        self.logger.success(f"Build PASSED (took {elapsed:.1f}s)")
        self.logger.info(f"Total files compiled: {self.logger.stats['compiled']}")
        self.logger.info(f"Total warnings: {self.logger.stats['warnings']}")
        self.logger.info(f"Total errors: {self.logger.stats['errors']}")
        return True

    def clean(self):
        """Clean build artifacts"""
        self.logger.info("=" * 80)
        self.logger.info("Cleaning Build Directory")
        self.logger.info("=" * 80)

        if not self.build_dir.exists():
            self.logger.info("Build directory does not exist, nothing to clean")
            return True

        clean_cmd = ["cmake", "--build", ".", "--target", "clean"]
        retcode = self.run_command(clean_cmd, cwd=self.build_dir)

        if retcode == 0:
            self.logger.success("Clean completed")
            return True
        else:
            self.logger.error("Clean failed")
            return False

    def get_make_program(self):
        """Get the path to make program"""
        tools_dir = self.project_root / ".." / "tools"
        make_path = (
            tools_dir
            / "toolchain"
            / "xpack"
            / "xpack-windows-build-tools-4.2.1-2-win32-x64"
            / "xpack-windows-build-tools-4.2.1-2"
            / "bin"
            / "make.exe"
        )
        return str(make_path.resolve())

    def print_summary(self):
        """Print build summary"""
        self.logger.info("=" * 80)
        self.logger.info("BUILD SUMMARY")
        self.logger.info("=" * 80)
        self.logger.info(f"Files compiled: {self.logger.stats['compiled']}")
        self.logger.info(f"Warnings: {self.logger.stats['warnings']}")
        self.logger.info(f"Errors: {self.logger.stats['errors']}")

        if self.logger.stats["failed_files"]:
            self.logger.error("Failed files:")
            for f in self.logger.stats["failed_files"]:
                self.logger.error(f"  - {f}")

        # Check for output files
        elf_file = (
            self.build_dir / "project" / "stm32f4xx" / "main" / "stm32f4xx_main.elf"
        )
        if elf_file.exists():
            size = elf_file.stat().st_size
            self.logger.success(f"Output: {elf_file} ({size:,} bytes)")


def main():
    """Main entry point"""
    import argparse

    parser = argparse.ArgumentParser(description="ARM ASM Build Script")
    parser.add_argument(
        "action",
        choices=["build", "clean", "rebuild"],
        default="build",
        nargs="?",
        help="Action to perform",
    )
    parser.add_argument(
        "-j", "--jobs", type=int, default=None, help="Number of parallel jobs"
    )
    parser.add_argument("-v", "--verbose", action="store_true", help="Verbose output")

    args = parser.parse_args()

    # Determine project directory
    script_dir = Path(__file__).parent.resolve()
    if (script_dir / "main").exists():
        project_dir = script_dir / "main"
    else:
        project_dir = script_dir

    build_dir = project_dir / "build"
    log_file = build_dir / "err.log"

    print(f"Project directory: {project_dir}")
    print(f"Build directory: {build_dir}")
    print(f"Log file: {log_file}")
    print()

    # Create build directory if needed
    build_dir.mkdir(exist_ok=True)

    with BuildLogger(log_file) as logger:
        runner = BuildRunner(build_dir, logger)

        if args.action == "clean":
            success = runner.clean()
        elif args.action == "rebuild":
            runner.clean()
            if runner.cmake_configure():
                success = runner.build(args.jobs)
            else:
                success = False
        else:  # build
            # Check if CMake is configured
            if not (build_dir / "CMakeCache.txt").exists():
                logger.info("CMake not configured, running configuration...")
                if not runner.cmake_configure():
                    success = False
                else:
                    success = runner.build(args.jobs)
            else:
                success = runner.build(args.jobs)

        runner.print_summary()

        if success:
            print("\n" + "=" * 80)
            print(logger.colorize("BUILD SUCCESSFUL!", "GREEN"))
            print("=" * 80)
            sys.exit(0)
        else:
            print("\n" + "=" * 80)
            print(logger.colorize("BUILD FAILED!", "RED"))
            print(f"See log: {log_file}")
            print("=" * 80)
            sys.exit(1)


if __name__ == "__main__":
    main()
