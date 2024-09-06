#include "arthur_core.h"
#include "avl.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  Node *root = new_node(5);
  root = insert_node(root, 4);
  root = insert_node(root, 3);
  root = insert_node(root, 2);
  root = insert_node(root, 1);
  printf("\n");
  print_tree(root);
  printf("\n=======\n");
  root = remove_node(root, 2);
  print_tree(root);
  /* pretty_print(root, 0); */
  printf("\n=======\n");
  return 0;
}
