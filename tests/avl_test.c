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

START_TEST(test_avl_big_tree) {
  Node *root = new_node(50);
  root = insert_node(root, 1);
  root = insert_node(root, 64);
  root = insert_node(root, 12);
  root = insert_node(root, 18);
  root = insert_node(root, 66);
  root = insert_node(root, 38);
  root = insert_node(root, 95);
  root = insert_node(root, 58);
  root = insert_node(root, 59);
  root = insert_node(root, 70);
  root = insert_node(root, 68);
  root = insert_node(root, 39);
  root = insert_node(root, 62);
  root = insert_node(root, 7);
  root = insert_node(root, 60);
  root = insert_node(root, 43);
  root = insert_node(root, 16);
  root = insert_node(root, 67);
  root = insert_node(root, 34);
  root = insert_node(root, 35);

  ck_assert_int_eq(50, root->val);
  // LEFT SIDE
  ck_assert_int_eq(18, root->left->val);
  ck_assert_int_eq(12, root->left->left->val);
  ck_assert_int_eq(1, root->left->left->left->val);
  ck_assert_int_eq(7, root->left->left->left->right->val);
  ck_assert_int_eq(16, root->left->left->right->val);
  //
  ck_assert_int_eq(38, root->left->right->val);
  ck_assert_int_eq(34, root->left->right->left->val);
  ck_assert_int_eq(35, root->left->right->left->right->val);
  ck_assert_int_eq(39, root->left->right->right->val);
  ck_assert_int_eq(43, root->left->right->right->right->val);

  // RIGHT SIDE
  ck_assert_int_eq(66, root->right->val);
  ck_assert_int_eq(59, root->right->left->val);
  ck_assert_int_eq(58, root->right->left->left->val);
  ck_assert_int_eq(62, root->right->left->right->val);
  ck_assert_int_eq(60, root->right->left->right->left->val);
  ck_assert_int_eq(64, root->right->left->right->right->val);

  //
  ck_assert_int_eq(70, root->right->right->val);
  ck_assert_int_eq(68, root->right->right->left->val);
  ck_assert_int_eq(67, root->right->right->left->left->val);
  ck_assert_int_eq(95, root->right->right->right->val);
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
  tcase_add_test(tc_core, test_avl_big_tree);
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
