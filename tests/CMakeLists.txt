add_executable(bst_test tests/bst_test.c)
target_link_libraries(bst_test PRIVATE Check::check trees)
add_test(NAME bst_test COMMAND bst_test)
