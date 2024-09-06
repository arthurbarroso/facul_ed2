#include "avl.h"
#include <check.h>
#include <stdio.h>
#include <stdlib.h>

START_TEST(test_avl_new_node) {
  Node *root = new_node(5);
  root = insert_node(root, 4);
  root = insert_node(root, 3);
  root = insert_node(root, 2);
  root = insert_node(root, 1);
  ck_assert_int_eq(4, root->val);
}
END_TEST

START_TEST(test_avl_insert_node) {
  Node *root = new_node(5);
  root = insert_node(root, 4);
  root = insert_node(root, 3);
  root = insert_node(root, 2);
  root = insert_node(root, 1);
  ck_assert_int_eq(4, root->val);
  ck_assert_int_eq(5, root->right->val);
  ck_assert_int_eq(2, root->left->val);
  ck_assert_int_eq(1, root->left->left->val);
  ck_assert_int_eq(3, root->left->right->val);
}
END_TEST

START_TEST(test_avl_remove_node) {
  Node *root = new_node(5);
  root = insert_node(root, 4);
  root = insert_node(root, 3);
  root = insert_node(root, 2);
  root = insert_node(root, 1);
  root = remove_node(root, 2);
  ck_assert_int_eq(4, root->val);
  ck_assert_int_eq(5, root->right->val);
  ck_assert_int_eq(1, root->left->val);
  ck_assert_int_eq(3, root->left->right->val);
}
END_TEST

Suite *avl_suite(void) {
  Suite *s = suite_create("avl");
  TCase *tc_core;
  tc_core = tcase_create("core");
  tcase_set_timeout(tc_core, 10);
  tcase_add_test(tc_core, test_avl_new_node);
  tcase_add_test(tc_core, test_avl_insert_node);
  tcase_add_test(tc_core, test_avl_remove_node);
  suite_add_tcase(s, tc_core);
  return s;
}

int main() {
  int number_failed = 0;
  Suite *s;
  SRunner *sr;

  s = avl_suite();
  sr = srunner_create(s);

  srunner_run_all(sr, CK_VERBOSE);
  number_failed = srunner_ntests_failed(sr);
  srunner_free(sr);
  return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
