cmake_minimum_required(VERSION 3.22)
include(FetchContent)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out)
set(CMAKE_C_COMPILER gcc)
set(CMAKE_EXPORT_COMPILE_COMMANDS true)

project(ed2)


FetchContent_Declare(
  check
  GIT_REPOSITORY https://github.com/libcheck/check.git
  GIT_TAG        0.15.2
)
FetchContent_MakeAvailable(check)

# bst
include(src/bst/CMakeLists.txt)
foreach(FILE ${FILES})
  set(treeFiles ${treeFiles} src/bst/${FILE})
endforeach()
add_executable(tree ${treeFiles})
target_compile_options(tree PRIVATE -I. -Wall)
# target_link_libraries(check)

# Student
include(src/rev/CMakeLists.txt)
foreach(FILE ${FILES})
  set(revFiles ${revFiles} src/rev/${FILE})
endforeach()
add_executable(student ${revFiles})
target_compile_options(student PRIVATE -I. -Wall)

# Tests
add_library(trees OBJECT src/bst/tree.c)
set_property(TARGET trees
  PROPERTY
  INTERFACE_INCLUDE_DIRECTORIES
  "${CMAKE_SOURCE_DIR}/src/bst/")
enable_testing()

include(tests/CMakeLists.txt)

# add_executable(bst_test bst_test.c)
# target_link_libraries(bst_test PRIVATE Check::check)
# add_test(NAME bst_test COMMAND bst_test)
# add_executable(bst_test bst_test.c)
# target_link_libraries(bst_test PRIVATE Check::check)
# add_test(NAME bst_test COMMAND bst_test)
