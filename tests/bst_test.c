#include "tree.h"
#include <check.h>
#include <stdio.h>
#include <stdlib.h>

START_TEST(test_bst_new_node) {
  Node *node = new_node(30);
  ck_assert_int_eq(30, node->val);
  ck_assert_ptr_null(node->left);
  ck_assert_ptr_null(node->right);
}
END_TEST

START_TEST(test_bst_insert_node) {
  Node *root = new_node(50);
  root = insert_node(root, 30);
  root = insert_node(root, 20);
  root = insert_node(root, 40);
  root = insert_node(root, 70);

  ck_assert_int_eq(50, root->val);
  ck_assert_int_eq(30, root->left->val);
  ck_assert_int_eq(70, root->right->val);
  ck_assert_int_eq(40, root->left->right->val);
}
END_TEST

START_TEST(test_bst_remove_node) {
  Node *root = new_node(50);
  root = insert_node(root, 30);
  root = insert_node(root, 20);
  root = insert_node(root, 40);
  root = insert_node(root, 70);
  root = insert_node(root, 60);
  root = insert_node(root, 80);
  // Removal
  root = remove_node(root, 70);
  root = remove_node(root, 30);

  ck_assert_int_eq(60, root->right->val);
  ck_assert_int_eq(80, root->right->right->val);
  ck_assert_int_eq(40, root->left->right->val);
}
END_TEST

Suite *bst_suite(void) {
  Suite *s = suite_create("bst");
  TCase *tc_core;
  tc_core = tcase_create("core");
  tcase_set_timeout(tc_core, 10);
  tcase_add_test(tc_core, test_bst_new_node);
  tcase_add_test(tc_core, test_bst_insert_node);
  tcase_add_test(tc_core, test_bst_remove_node);
  suite_add_tcase(s, tc_core);
  return s;
}

int main() {
  int number_failed = 0;
  Suite *s;
  SRunner *sr;

  s = bst_suite();
  sr = srunner_create(s);

  srunner_run_all(sr, CK_VERBOSE);
  number_failed = srunner_ntests_failed(sr);
  srunner_free(sr);
  return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
