#include "treap.h"
#include <stdio.h>
#include <stdlib.h>

Node *create_node(int key) {
  Node *node = (Node *)malloc(sizeof(Node));
  node->key = key;
  node->prio = rand();
  node->left = NULL;
  node->right = NULL;
  return node;
}

Node *rotate_right(Node *root) {
  Node *newRoot = root->left;
  Node *tempTree = newRoot->right;

  newRoot->right = root;
  root->left = tempTree;

  return newRoot;
}

Node *rotate_left(Node *root) {
  Node *new_root = root->right;
  Node *temp = new_root->left;
  new_root->left = root;
  root->right = temp;
  return new_root;
}

Node *insert(Node *root, int key) {
  if (root == NULL)
    return create_node(key);

  if (key < root->key) {
    root->left = insert(root->left, key);

    if (root->left->prio > root->prio)
      root = rotate_right(root);
  } else if (key > root->key) {
    root->right = insert(root->right, key);
    if (root->right->prio > root->prio)
      root = rotate_left(root);
  }
  return root;
}

Node *find_min(Node *node) {
  while (node != NULL && node->left != NULL)
    node = node->left;
  return node;
}

Node *remove_node(Node *root, int key) {
  if (root == NULL)
    return root;

  if (key < root->key)
    root->left = remove_node(root->left, key);
  else if (key > root->key) {
    root->right = remove_node(root->right, key);
  } else {
    if (root->left == NULL) {
      // new root
      Node *t = root->right;
      free(root);
      return t;
    } else if (root->right == NULL) {
      // new root
      Node *t = root->left;
      free(root);
      return t;
    }

    Node *min = find_min(root->right);
    root->key = min->key;
    root->right = remove_node(root->right, min->key);
  }
  return root;
}

void traverse_inorder(Node *node) {
  if (node != NULL) {
    traverse_inorder(node->left);
    printf("\nKey: %d -- Prio: %d", node->key, node->prio);
    traverse_inorder(node->right);
  }
}
