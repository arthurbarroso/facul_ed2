#include "treap.h"

int main(void) {
  Node *root = NULL;

  root = insert(root, 12);
  root = insert(root, 33);
  root = insert(root, 49);
  root = insert(root, 25);
  root = insert(root, 70);
  root = insert(root, 60);
  root = insert(root, 99);

  printf("|--- In order:\n");
  traverse_inorder(root);

  printf("\n");

  printf("\n|--- In order after removing 12:\n");
  root = remove_node(root, 12);
  traverse_inorder(root);

  printf("\n");
  return 0;
}
