#include "avl.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

void cleanup(Node *node) {
  if (node != NULL) {
    cleanup(node->left);
    cleanup(node->right);
    free(node);
  }
}

Node *find(int val, Node *node) {
  if (node == NULL)
    return NULL;
  if (val < node->val)
    return find(val, node->left);
  if (val > node->val)
    return find(val, node->right);
  return node;
}

Node *find_min(Node *node) {
  if (node == NULL)
    return NULL;
  if (node->left == NULL)
    return node;
  return find_min(node->left);
}

Node *find_max(Node *node) {
  if (node != NULL) {
    while (node->right != NULL) {
      node = node->right;
    }
  }
}
