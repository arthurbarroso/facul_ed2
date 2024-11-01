#ifndef TREAP_H
#define TREAP_H
#include <stdio.h>

typedef struct node {
  int key;
  int prio;
  struct node *left;
  struct node *right;
} Node;

Node *create_node(int key);
Node *rotate_right(Node *node);
Node *rotate_left(Node *node);
Node *insert(Node *root, int key);
void traverse_inorder(Node *node);
Node *find_min(Node *node);
Node *remove_node(Node *root, int key);

#endif
