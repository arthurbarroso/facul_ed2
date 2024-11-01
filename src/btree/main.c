#include "btree.h"

int main() {
  Node *root = NULL;

  insert_node(&root, 10);
  insert_node(&root, 20);
  insert_node(&root, 5);
  insert_node(&root, 6);
  insert_node(&root, 12);
  insert_node(&root, 30);

  printf("|--- In order:\n");
  traverse_inorder(root);
  printf("\n");

  return 0;
}
