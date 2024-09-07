#include "arthur_core.h"
#include "avl.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  /* Node *root = new_node(5); */
  /* root = insert_node(root, 4); */
  /* root = insert_node(root, 3); */
  /* root = insert_node(root, 2); */
  /* root = insert_node(root, 1); */

  Node *root = new_node(50);
  root = insert_node(root, 1);
  root = insert_node(root, 64);
  root = insert_node(root, 12);
  root = insert_node(root, 18);
  root = insert_node(root, 66);
  root = insert_node(root, 38);
  root = insert_node(root, 95);
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
  printf("\n");
  printf("\n=======\n");
  root = remove_node(root, 2);
  print_tree(root);
  pretty_print(root, 0);
  printf("\n=======\n");
  return 0;
}
