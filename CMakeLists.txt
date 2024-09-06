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

# arthur_core lib
add_library(arthur_core OBJECT src/arthur_core/arthur_core.c)
set_property(TARGET arthur_core
  PROPERTY
  INTERFACE_INCLUDE_DIRECTORIES
  "${CMAKE_SOURCE_DIR}/src/arthur_core")

# executables

# bst
add_library(tree_lib OBJECT src/bst/tree.c)
target_include_directories(tree_lib PUBLIC "${CMAKE_SOURCE_DIR}/src/bst")

add_executable(tree src/bst/main.c)
target_link_libraries(tree PRIVATE tree_lib)
target_compile_options(tree PRIVATE -I. -Wall)

add_executable(bst_test tests/bst_test.c)
target_link_libraries(bst_test PRIVATE Check::check tree_lib)
add_test(NAME bst_test COMMAND bst_test)

# Student
add_library(student_lib OBJECT src/rev/student.c)
add_executable(student src/rev/main.c)
target_link_libraries(student PRIVATE student_lib)
target_compile_options(student PRIVATE -I. -Wall)

# AVL
add_library(avl_lib OBJECT src/avl/avl.c)
target_include_directories(avl_lib PUBLIC "${CMAKE_SOURCE_DIR}/src/avl")
target_link_libraries(avl_lib PRIVATE arthur_core)

add_executable(avl src/avl/main.c)
target_link_libraries(avl PRIVATE avl_lib arthur_core)
target_compile_options(avl PRIVATE -I. -Wall)

add_executable(avl_test tests/avl_test.c)
target_link_libraries(avl_test PRIVATE Check::check avl_lib arthur_core)
add_test(NAME avl_test COMMAND avl_test)

# add_library(avl_lib OBJECT src/avl/avl.c)
# set_property(TARGET avl_lib
#   PROPERTY
#   INTERFACE_INCLUDE_DIRECTORIES
#   "${CMAKE_SOURCE_DIR}/src/avl/")
# target_link_libraries(avl_lib PRIVATE arthur_core)



enable_testing()


# add_executable(bst_test bst_test.c)
# target_link_libraries(bst_test PRIVATE Check::check)
# add_test(NAME bst_test COMMAND bst_test)
# add_executable(bst_test bst_test.c)
# target_link_libraries(bst_test PRIVATE Check::check)
# add_test(NAME bst_test COMMAND bst_test)
