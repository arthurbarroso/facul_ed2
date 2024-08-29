#include "tree.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  Node *root = new_node(50);
  root = insert_node(root, 30);
  root = insert_node(root, 20);
  root = insert_node(root, 40);
  root = insert_node(root, 70);
  root = insert_node(root, 60);
  root = insert_node(root, 80);

  printf("\n INITIAL TREE: ");
  print_tree(root);
  printf("\n=======");

  printf("\n TREE AFTER DELETING NODES 70 AND 30: ");
  root = remove_node(root, 70);
  root = remove_node(root, 30);
  print_tree(root);
  printf("\n=======");

  printf("\n TREE AFTER INSERTING EXISTING NODE (60): ");
  insert_node(root, 60);
  print_tree(root);
  printf("\n=======");

  printf("\n======= Traversal (no recursion)");

  printf("\n -- postorder:");
  traverse_postorder(root);
  printf("\n=======");
  printf("\n -- inorder: ");
  traverse_inorder(root);
  printf("\n=======");
  printf("\n -- preorder: ");
  traverse_preorder(root);

  /* printf("\n======="); */
  /* printf("\n"); */
  print_tree(root);
  printf("\n");
  return 0;
}
