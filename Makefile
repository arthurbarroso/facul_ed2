# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.22.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.22.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/arthurb/www/facul_ed2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/arthurb/www/facul_ed2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/opt/homebrew/Cellar/cmake/3.22.3/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.22.3/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.22.3/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/arthurb/www/facul_ed2/CMakeFiles /Users/arthurb/www/facul_ed2//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/arthurb/www/facul_ed2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named arthur_core

# Build rule for target.
arthur_core: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 arthur_core
.PHONY : arthur_core

# fast build rule for target.
arthur_core/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/arthur_core.dir/build.make CMakeFiles/arthur_core.dir/build
.PHONY : arthur_core/fast

#=============================================================================
# Target rules for targets named bst_lib

# Build rule for target.
bst_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bst_lib
.PHONY : bst_lib

# fast build rule for target.
bst_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_lib.dir/build.make CMakeFiles/bst_lib.dir/build
.PHONY : bst_lib/fast

#=============================================================================
# Target rules for targets named bst

# Build rule for target.
bst: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bst
.PHONY : bst

# fast build rule for target.
bst/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst.dir/build.make CMakeFiles/bst.dir/build
.PHONY : bst/fast

#=============================================================================
# Target rules for targets named bst_test

# Build rule for target.
bst_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bst_test
.PHONY : bst_test

# fast build rule for target.
bst_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_test.dir/build.make CMakeFiles/bst_test.dir/build
.PHONY : bst_test/fast

#=============================================================================
# Target rules for targets named student_lib

# Build rule for target.
student_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 student_lib
.PHONY : student_lib

# fast build rule for target.
student_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student_lib.dir/build.make CMakeFiles/student_lib.dir/build
.PHONY : student_lib/fast

#=============================================================================
# Target rules for targets named student

# Build rule for target.
student: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 student
.PHONY : student

# fast build rule for target.
student/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student.dir/build.make CMakeFiles/student.dir/build
.PHONY : student/fast

#=============================================================================
# Target rules for targets named avl_lib

# Build rule for target.
avl_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 avl_lib
.PHONY : avl_lib

# fast build rule for target.
avl_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_lib.dir/build.make CMakeFiles/avl_lib.dir/build
.PHONY : avl_lib/fast

#=============================================================================
# Target rules for targets named avl

# Build rule for target.
avl: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 avl
.PHONY : avl

# fast build rule for target.
avl/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl.dir/build.make CMakeFiles/avl.dir/build
.PHONY : avl/fast

#=============================================================================
# Target rules for targets named avl_test

# Build rule for target.
avl_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 avl_test
.PHONY : avl_test

# fast build rule for target.
avl_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_test.dir/build.make CMakeFiles/avl_test.dir/build
.PHONY : avl_test/fast

#=============================================================================
# Target rules for targets named treap_lib

# Build rule for target.
treap_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 treap_lib
.PHONY : treap_lib

# fast build rule for target.
treap_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap_lib.dir/build.make CMakeFiles/treap_lib.dir/build
.PHONY : treap_lib/fast

#=============================================================================
# Target rules for targets named treap

# Build rule for target.
treap: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 treap
.PHONY : treap

# fast build rule for target.
treap/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap.dir/build.make CMakeFiles/treap.dir/build
.PHONY : treap/fast

#=============================================================================
# Target rules for targets named btree_lib

# Build rule for target.
btree_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 btree_lib
.PHONY : btree_lib

# fast build rule for target.
btree_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree_lib.dir/build.make CMakeFiles/btree_lib.dir/build
.PHONY : btree_lib/fast

#=============================================================================
# Target rules for targets named btree

# Build rule for target.
btree: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 btree
.PHONY : btree

# fast build rule for target.
btree/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree.dir/build.make CMakeFiles/btree.dir/build
.PHONY : btree/fast

#=============================================================================
# Target rules for targets named Experimental

# Build rule for target.
Experimental: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Experimental
.PHONY : Experimental

# fast build rule for target.
Experimental/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/Experimental.dir/build.make _deps/check-build/CMakeFiles/Experimental.dir/build
.PHONY : Experimental/fast

#=============================================================================
# Target rules for targets named Nightly

# Build rule for target.
Nightly: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Nightly
.PHONY : Nightly

# fast build rule for target.
Nightly/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/Nightly.dir/build.make _deps/check-build/CMakeFiles/Nightly.dir/build
.PHONY : Nightly/fast

#=============================================================================
# Target rules for targets named Continuous

# Build rule for target.
Continuous: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Continuous
.PHONY : Continuous

# fast build rule for target.
Continuous/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/Continuous.dir/build.make _deps/check-build/CMakeFiles/Continuous.dir/build
.PHONY : Continuous/fast

#=============================================================================
# Target rules for targets named NightlyMemoryCheck

# Build rule for target.
NightlyMemoryCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyMemoryCheck
.PHONY : NightlyMemoryCheck

# fast build rule for target.
NightlyMemoryCheck/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyMemoryCheck.dir/build.make _deps/check-build/CMakeFiles/NightlyMemoryCheck.dir/build
.PHONY : NightlyMemoryCheck/fast

#=============================================================================
# Target rules for targets named NightlyStart

# Build rule for target.
NightlyStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyStart
.PHONY : NightlyStart

# fast build rule for target.
NightlyStart/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyStart.dir/build.make _deps/check-build/CMakeFiles/NightlyStart.dir/build
.PHONY : NightlyStart/fast

#=============================================================================
# Target rules for targets named NightlyUpdate

# Build rule for target.
NightlyUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyUpdate
.PHONY : NightlyUpdate

# fast build rule for target.
NightlyUpdate/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyUpdate.dir/build.make _deps/check-build/CMakeFiles/NightlyUpdate.dir/build
.PHONY : NightlyUpdate/fast

#=============================================================================
# Target rules for targets named NightlyConfigure

# Build rule for target.
NightlyConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyConfigure
.PHONY : NightlyConfigure

# fast build rule for target.
NightlyConfigure/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyConfigure.dir/build.make _deps/check-build/CMakeFiles/NightlyConfigure.dir/build
.PHONY : NightlyConfigure/fast

#=============================================================================
# Target rules for targets named NightlyBuild

# Build rule for target.
NightlyBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyBuild
.PHONY : NightlyBuild

# fast build rule for target.
NightlyBuild/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyBuild.dir/build.make _deps/check-build/CMakeFiles/NightlyBuild.dir/build
.PHONY : NightlyBuild/fast

#=============================================================================
# Target rules for targets named NightlyTest

# Build rule for target.
NightlyTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyTest
.PHONY : NightlyTest

# fast build rule for target.
NightlyTest/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyTest.dir/build.make _deps/check-build/CMakeFiles/NightlyTest.dir/build
.PHONY : NightlyTest/fast

#=============================================================================
# Target rules for targets named NightlyCoverage

# Build rule for target.
NightlyCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyCoverage
.PHONY : NightlyCoverage

# fast build rule for target.
NightlyCoverage/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyCoverage.dir/build.make _deps/check-build/CMakeFiles/NightlyCoverage.dir/build
.PHONY : NightlyCoverage/fast

#=============================================================================
# Target rules for targets named NightlyMemCheck

# Build rule for target.
NightlyMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlyMemCheck
.PHONY : NightlyMemCheck

# fast build rule for target.
NightlyMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlyMemCheck.dir/build.make _deps/check-build/CMakeFiles/NightlyMemCheck.dir/build
.PHONY : NightlyMemCheck/fast

#=============================================================================
# Target rules for targets named NightlySubmit

# Build rule for target.
NightlySubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 NightlySubmit
.PHONY : NightlySubmit

# fast build rule for target.
NightlySubmit/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/NightlySubmit.dir/build.make _deps/check-build/CMakeFiles/NightlySubmit.dir/build
.PHONY : NightlySubmit/fast

#=============================================================================
# Target rules for targets named ExperimentalStart

# Build rule for target.
ExperimentalStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalStart
.PHONY : ExperimentalStart

# fast build rule for target.
ExperimentalStart/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalStart.dir/build.make _deps/check-build/CMakeFiles/ExperimentalStart.dir/build
.PHONY : ExperimentalStart/fast

#=============================================================================
# Target rules for targets named ExperimentalUpdate

# Build rule for target.
ExperimentalUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalUpdate
.PHONY : ExperimentalUpdate

# fast build rule for target.
ExperimentalUpdate/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalUpdate.dir/build.make _deps/check-build/CMakeFiles/ExperimentalUpdate.dir/build
.PHONY : ExperimentalUpdate/fast

#=============================================================================
# Target rules for targets named ExperimentalConfigure

# Build rule for target.
ExperimentalConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalConfigure
.PHONY : ExperimentalConfigure

# fast build rule for target.
ExperimentalConfigure/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalConfigure.dir/build.make _deps/check-build/CMakeFiles/ExperimentalConfigure.dir/build
.PHONY : ExperimentalConfigure/fast

#=============================================================================
# Target rules for targets named ExperimentalBuild

# Build rule for target.
ExperimentalBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalBuild
.PHONY : ExperimentalBuild

# fast build rule for target.
ExperimentalBuild/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalBuild.dir/build.make _deps/check-build/CMakeFiles/ExperimentalBuild.dir/build
.PHONY : ExperimentalBuild/fast

#=============================================================================
# Target rules for targets named ExperimentalTest

# Build rule for target.
ExperimentalTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalTest
.PHONY : ExperimentalTest

# fast build rule for target.
ExperimentalTest/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalTest.dir/build.make _deps/check-build/CMakeFiles/ExperimentalTest.dir/build
.PHONY : ExperimentalTest/fast

#=============================================================================
# Target rules for targets named ExperimentalCoverage

# Build rule for target.
ExperimentalCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalCoverage
.PHONY : ExperimentalCoverage

# fast build rule for target.
ExperimentalCoverage/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalCoverage.dir/build.make _deps/check-build/CMakeFiles/ExperimentalCoverage.dir/build
.PHONY : ExperimentalCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalMemCheck

# Build rule for target.
ExperimentalMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalMemCheck
.PHONY : ExperimentalMemCheck

# fast build rule for target.
ExperimentalMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalMemCheck.dir/build.make _deps/check-build/CMakeFiles/ExperimentalMemCheck.dir/build
.PHONY : ExperimentalMemCheck/fast

#=============================================================================
# Target rules for targets named ExperimentalSubmit

# Build rule for target.
ExperimentalSubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExperimentalSubmit
.PHONY : ExperimentalSubmit

# fast build rule for target.
ExperimentalSubmit/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ExperimentalSubmit.dir/build.make _deps/check-build/CMakeFiles/ExperimentalSubmit.dir/build
.PHONY : ExperimentalSubmit/fast

#=============================================================================
# Target rules for targets named ContinuousStart

# Build rule for target.
ContinuousStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousStart
.PHONY : ContinuousStart

# fast build rule for target.
ContinuousStart/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousStart.dir/build.make _deps/check-build/CMakeFiles/ContinuousStart.dir/build
.PHONY : ContinuousStart/fast

#=============================================================================
# Target rules for targets named ContinuousUpdate

# Build rule for target.
ContinuousUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousUpdate
.PHONY : ContinuousUpdate

# fast build rule for target.
ContinuousUpdate/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousUpdate.dir/build.make _deps/check-build/CMakeFiles/ContinuousUpdate.dir/build
.PHONY : ContinuousUpdate/fast

#=============================================================================
# Target rules for targets named ContinuousConfigure

# Build rule for target.
ContinuousConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousConfigure
.PHONY : ContinuousConfigure

# fast build rule for target.
ContinuousConfigure/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousConfigure.dir/build.make _deps/check-build/CMakeFiles/ContinuousConfigure.dir/build
.PHONY : ContinuousConfigure/fast

#=============================================================================
# Target rules for targets named ContinuousBuild

# Build rule for target.
ContinuousBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousBuild
.PHONY : ContinuousBuild

# fast build rule for target.
ContinuousBuild/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousBuild.dir/build.make _deps/check-build/CMakeFiles/ContinuousBuild.dir/build
.PHONY : ContinuousBuild/fast

#=============================================================================
# Target rules for targets named ContinuousTest

# Build rule for target.
ContinuousTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousTest
.PHONY : ContinuousTest

# fast build rule for target.
ContinuousTest/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousTest.dir/build.make _deps/check-build/CMakeFiles/ContinuousTest.dir/build
.PHONY : ContinuousTest/fast

#=============================================================================
# Target rules for targets named ContinuousCoverage

# Build rule for target.
ContinuousCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousCoverage
.PHONY : ContinuousCoverage

# fast build rule for target.
ContinuousCoverage/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousCoverage.dir/build.make _deps/check-build/CMakeFiles/ContinuousCoverage.dir/build
.PHONY : ContinuousCoverage/fast

#=============================================================================
# Target rules for targets named ContinuousMemCheck

# Build rule for target.
ContinuousMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousMemCheck
.PHONY : ContinuousMemCheck

# fast build rule for target.
ContinuousMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousMemCheck.dir/build.make _deps/check-build/CMakeFiles/ContinuousMemCheck.dir/build
.PHONY : ContinuousMemCheck/fast

#=============================================================================
# Target rules for targets named ContinuousSubmit

# Build rule for target.
ContinuousSubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ContinuousSubmit
.PHONY : ContinuousSubmit

# fast build rule for target.
ContinuousSubmit/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/CMakeFiles/ContinuousSubmit.dir/build.make _deps/check-build/CMakeFiles/ContinuousSubmit.dir/build
.PHONY : ContinuousSubmit/fast

#=============================================================================
# Target rules for targets named compat

# Build rule for target.
compat: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 compat
.PHONY : compat

# fast build rule for target.
compat/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/lib/CMakeFiles/compat.dir/build.make _deps/check-build/lib/CMakeFiles/compat.dir/build
.PHONY : compat/fast

#=============================================================================
# Target rules for targets named check

# Build rule for target.
check: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 check
.PHONY : check

# fast build rule for target.
check/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/src/CMakeFiles/check.dir/build.make _deps/check-build/src/CMakeFiles/check.dir/build
.PHONY : check/fast

#=============================================================================
# Target rules for targets named checkShared

# Build rule for target.
checkShared: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 checkShared
.PHONY : checkShared

# fast build rule for target.
checkShared/fast:
	$(MAKE) $(MAKESILENT) -f _deps/check-build/src/CMakeFiles/checkShared.dir/build.make _deps/check-build/src/CMakeFiles/checkShared.dir/build
.PHONY : checkShared/fast

src/arthur_core/arthur_core.o: src/arthur_core/arthur_core.c.o
.PHONY : src/arthur_core/arthur_core.o

# target to build an object file
src/arthur_core/arthur_core.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/arthur_core.dir/build.make CMakeFiles/arthur_core.dir/src/arthur_core/arthur_core.c.o
.PHONY : src/arthur_core/arthur_core.c.o

src/arthur_core/arthur_core.i: src/arthur_core/arthur_core.c.i
.PHONY : src/arthur_core/arthur_core.i

# target to preprocess a source file
src/arthur_core/arthur_core.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/arthur_core.dir/build.make CMakeFiles/arthur_core.dir/src/arthur_core/arthur_core.c.i
.PHONY : src/arthur_core/arthur_core.c.i

src/arthur_core/arthur_core.s: src/arthur_core/arthur_core.c.s
.PHONY : src/arthur_core/arthur_core.s

# target to generate assembly for a file
src/arthur_core/arthur_core.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/arthur_core.dir/build.make CMakeFiles/arthur_core.dir/src/arthur_core/arthur_core.c.s
.PHONY : src/arthur_core/arthur_core.c.s

src/avl/avl.o: src/avl/avl.c.o
.PHONY : src/avl/avl.o

# target to build an object file
src/avl/avl.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_lib.dir/build.make CMakeFiles/avl_lib.dir/src/avl/avl.c.o
.PHONY : src/avl/avl.c.o

src/avl/avl.i: src/avl/avl.c.i
.PHONY : src/avl/avl.i

# target to preprocess a source file
src/avl/avl.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_lib.dir/build.make CMakeFiles/avl_lib.dir/src/avl/avl.c.i
.PHONY : src/avl/avl.c.i

src/avl/avl.s: src/avl/avl.c.s
.PHONY : src/avl/avl.s

# target to generate assembly for a file
src/avl/avl.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_lib.dir/build.make CMakeFiles/avl_lib.dir/src/avl/avl.c.s
.PHONY : src/avl/avl.c.s

src/avl/main.o: src/avl/main.c.o
.PHONY : src/avl/main.o

# target to build an object file
src/avl/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl.dir/build.make CMakeFiles/avl.dir/src/avl/main.c.o
.PHONY : src/avl/main.c.o

src/avl/main.i: src/avl/main.c.i
.PHONY : src/avl/main.i

# target to preprocess a source file
src/avl/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl.dir/build.make CMakeFiles/avl.dir/src/avl/main.c.i
.PHONY : src/avl/main.c.i

src/avl/main.s: src/avl/main.c.s
.PHONY : src/avl/main.s

# target to generate assembly for a file
src/avl/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl.dir/build.make CMakeFiles/avl.dir/src/avl/main.c.s
.PHONY : src/avl/main.c.s

src/bst/main.o: src/bst/main.c.o
.PHONY : src/bst/main.o

# target to build an object file
src/bst/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst.dir/build.make CMakeFiles/bst.dir/src/bst/main.c.o
.PHONY : src/bst/main.c.o

src/bst/main.i: src/bst/main.c.i
.PHONY : src/bst/main.i

# target to preprocess a source file
src/bst/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst.dir/build.make CMakeFiles/bst.dir/src/bst/main.c.i
.PHONY : src/bst/main.c.i

src/bst/main.s: src/bst/main.c.s
.PHONY : src/bst/main.s

# target to generate assembly for a file
src/bst/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst.dir/build.make CMakeFiles/bst.dir/src/bst/main.c.s
.PHONY : src/bst/main.c.s

src/bst/tree.o: src/bst/tree.c.o
.PHONY : src/bst/tree.o

# target to build an object file
src/bst/tree.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_lib.dir/build.make CMakeFiles/bst_lib.dir/src/bst/tree.c.o
.PHONY : src/bst/tree.c.o

src/bst/tree.i: src/bst/tree.c.i
.PHONY : src/bst/tree.i

# target to preprocess a source file
src/bst/tree.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_lib.dir/build.make CMakeFiles/bst_lib.dir/src/bst/tree.c.i
.PHONY : src/bst/tree.c.i

src/bst/tree.s: src/bst/tree.c.s
.PHONY : src/bst/tree.s

# target to generate assembly for a file
src/bst/tree.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_lib.dir/build.make CMakeFiles/bst_lib.dir/src/bst/tree.c.s
.PHONY : src/bst/tree.c.s

src/btree/btree.o: src/btree/btree.c.o
.PHONY : src/btree/btree.o

# target to build an object file
src/btree/btree.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree_lib.dir/build.make CMakeFiles/btree_lib.dir/src/btree/btree.c.o
.PHONY : src/btree/btree.c.o

src/btree/btree.i: src/btree/btree.c.i
.PHONY : src/btree/btree.i

# target to preprocess a source file
src/btree/btree.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree_lib.dir/build.make CMakeFiles/btree_lib.dir/src/btree/btree.c.i
.PHONY : src/btree/btree.c.i

src/btree/btree.s: src/btree/btree.c.s
.PHONY : src/btree/btree.s

# target to generate assembly for a file
src/btree/btree.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree_lib.dir/build.make CMakeFiles/btree_lib.dir/src/btree/btree.c.s
.PHONY : src/btree/btree.c.s

src/btree/main.o: src/btree/main.c.o
.PHONY : src/btree/main.o

# target to build an object file
src/btree/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree.dir/build.make CMakeFiles/btree.dir/src/btree/main.c.o
.PHONY : src/btree/main.c.o

src/btree/main.i: src/btree/main.c.i
.PHONY : src/btree/main.i

# target to preprocess a source file
src/btree/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree.dir/build.make CMakeFiles/btree.dir/src/btree/main.c.i
.PHONY : src/btree/main.c.i

src/btree/main.s: src/btree/main.c.s
.PHONY : src/btree/main.s

# target to generate assembly for a file
src/btree/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/btree.dir/build.make CMakeFiles/btree.dir/src/btree/main.c.s
.PHONY : src/btree/main.c.s

src/rev/main.o: src/rev/main.c.o
.PHONY : src/rev/main.o

# target to build an object file
src/rev/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student.dir/build.make CMakeFiles/student.dir/src/rev/main.c.o
.PHONY : src/rev/main.c.o

src/rev/main.i: src/rev/main.c.i
.PHONY : src/rev/main.i

# target to preprocess a source file
src/rev/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student.dir/build.make CMakeFiles/student.dir/src/rev/main.c.i
.PHONY : src/rev/main.c.i

src/rev/main.s: src/rev/main.c.s
.PHONY : src/rev/main.s

# target to generate assembly for a file
src/rev/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student.dir/build.make CMakeFiles/student.dir/src/rev/main.c.s
.PHONY : src/rev/main.c.s

src/rev/student.o: src/rev/student.c.o
.PHONY : src/rev/student.o

# target to build an object file
src/rev/student.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student_lib.dir/build.make CMakeFiles/student_lib.dir/src/rev/student.c.o
.PHONY : src/rev/student.c.o

src/rev/student.i: src/rev/student.c.i
.PHONY : src/rev/student.i

# target to preprocess a source file
src/rev/student.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student_lib.dir/build.make CMakeFiles/student_lib.dir/src/rev/student.c.i
.PHONY : src/rev/student.c.i

src/rev/student.s: src/rev/student.c.s
.PHONY : src/rev/student.s

# target to generate assembly for a file
src/rev/student.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/student_lib.dir/build.make CMakeFiles/student_lib.dir/src/rev/student.c.s
.PHONY : src/rev/student.c.s

src/treap/main.o: src/treap/main.c.o
.PHONY : src/treap/main.o

# target to build an object file
src/treap/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap.dir/build.make CMakeFiles/treap.dir/src/treap/main.c.o
.PHONY : src/treap/main.c.o

src/treap/main.i: src/treap/main.c.i
.PHONY : src/treap/main.i

# target to preprocess a source file
src/treap/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap.dir/build.make CMakeFiles/treap.dir/src/treap/main.c.i
.PHONY : src/treap/main.c.i

src/treap/main.s: src/treap/main.c.s
.PHONY : src/treap/main.s

# target to generate assembly for a file
src/treap/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap.dir/build.make CMakeFiles/treap.dir/src/treap/main.c.s
.PHONY : src/treap/main.c.s

src/treap/treap.o: src/treap/treap.c.o
.PHONY : src/treap/treap.o

# target to build an object file
src/treap/treap.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap_lib.dir/build.make CMakeFiles/treap_lib.dir/src/treap/treap.c.o
.PHONY : src/treap/treap.c.o

src/treap/treap.i: src/treap/treap.c.i
.PHONY : src/treap/treap.i

# target to preprocess a source file
src/treap/treap.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap_lib.dir/build.make CMakeFiles/treap_lib.dir/src/treap/treap.c.i
.PHONY : src/treap/treap.c.i

src/treap/treap.s: src/treap/treap.c.s
.PHONY : src/treap/treap.s

# target to generate assembly for a file
src/treap/treap.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/treap_lib.dir/build.make CMakeFiles/treap_lib.dir/src/treap/treap.c.s
.PHONY : src/treap/treap.c.s

tests/avl_test.o: tests/avl_test.c.o
.PHONY : tests/avl_test.o

# target to build an object file
tests/avl_test.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_test.dir/build.make CMakeFiles/avl_test.dir/tests/avl_test.c.o
.PHONY : tests/avl_test.c.o

tests/avl_test.i: tests/avl_test.c.i
.PHONY : tests/avl_test.i

# target to preprocess a source file
tests/avl_test.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_test.dir/build.make CMakeFiles/avl_test.dir/tests/avl_test.c.i
.PHONY : tests/avl_test.c.i

tests/avl_test.s: tests/avl_test.c.s
.PHONY : tests/avl_test.s

# target to generate assembly for a file
tests/avl_test.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/avl_test.dir/build.make CMakeFiles/avl_test.dir/tests/avl_test.c.s
.PHONY : tests/avl_test.c.s

tests/bst_test.o: tests/bst_test.c.o
.PHONY : tests/bst_test.o

# target to build an object file
tests/bst_test.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_test.dir/build.make CMakeFiles/bst_test.dir/tests/bst_test.c.o
.PHONY : tests/bst_test.c.o

tests/bst_test.i: tests/bst_test.c.i
.PHONY : tests/bst_test.i

# target to preprocess a source file
tests/bst_test.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_test.dir/build.make CMakeFiles/bst_test.dir/tests/bst_test.c.i
.PHONY : tests/bst_test.c.i

tests/bst_test.s: tests/bst_test.c.s
.PHONY : tests/bst_test.s

# target to generate assembly for a file
tests/bst_test.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bst_test.dir/build.make CMakeFiles/bst_test.dir/tests/bst_test.c.s
.PHONY : tests/bst_test.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... Continuous"
	@echo "... ContinuousBuild"
	@echo "... ContinuousConfigure"
	@echo "... ContinuousCoverage"
	@echo "... ContinuousMemCheck"
	@echo "... ContinuousStart"
	@echo "... ContinuousSubmit"
	@echo "... ContinuousTest"
	@echo "... ContinuousUpdate"
	@echo "... Experimental"
	@echo "... ExperimentalBuild"
	@echo "... ExperimentalConfigure"
	@echo "... ExperimentalCoverage"
	@echo "... ExperimentalMemCheck"
	@echo "... ExperimentalStart"
	@echo "... ExperimentalSubmit"
	@echo "... ExperimentalTest"
	@echo "... ExperimentalUpdate"
	@echo "... Nightly"
	@echo "... NightlyBuild"
	@echo "... NightlyConfigure"
	@echo "... NightlyCoverage"
	@echo "... NightlyMemCheck"
	@echo "... NightlyMemoryCheck"
	@echo "... NightlyStart"
	@echo "... NightlySubmit"
	@echo "... NightlyTest"
	@echo "... NightlyUpdate"
	@echo "... arthur_core"
	@echo "... avl"
	@echo "... avl_lib"
	@echo "... avl_test"
	@echo "... bst"
	@echo "... bst_lib"
	@echo "... bst_test"
	@echo "... btree"
	@echo "... btree_lib"
	@echo "... check"
	@echo "... checkShared"
	@echo "... compat"
	@echo "... student"
	@echo "... student_lib"
	@echo "... treap"
	@echo "... treap_lib"
	@echo "... src/arthur_core/arthur_core.o"
	@echo "... src/arthur_core/arthur_core.i"
	@echo "... src/arthur_core/arthur_core.s"
	@echo "... src/avl/avl.o"
	@echo "... src/avl/avl.i"
	@echo "... src/avl/avl.s"
	@echo "... src/avl/main.o"
	@echo "... src/avl/main.i"
	@echo "... src/avl/main.s"
	@echo "... src/bst/main.o"
	@echo "... src/bst/main.i"
	@echo "... src/bst/main.s"
	@echo "... src/bst/tree.o"
	@echo "... src/bst/tree.i"
	@echo "... src/bst/tree.s"
	@echo "... src/btree/btree.o"
	@echo "... src/btree/btree.i"
	@echo "... src/btree/btree.s"
	@echo "... src/btree/main.o"
	@echo "... src/btree/main.i"
	@echo "... src/btree/main.s"
	@echo "... src/rev/main.o"
	@echo "... src/rev/main.i"
	@echo "... src/rev/main.s"
	@echo "... src/rev/student.o"
	@echo "... src/rev/student.i"
	@echo "... src/rev/student.s"
	@echo "... src/treap/main.o"
	@echo "... src/treap/main.i"
	@echo "... src/treap/main.s"
	@echo "... src/treap/treap.o"
	@echo "... src/treap/treap.i"
	@echo "... src/treap/treap.s"
	@echo "... tests/avl_test.o"
	@echo "... tests/avl_test.i"
	@echo "... tests/avl_test.s"
	@echo "... tests/bst_test.o"
	@echo "... tests/bst_test.i"
	@echo "... tests/bst_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

