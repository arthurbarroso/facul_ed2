#ifndef BTREE_H
#define BTREE_H
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_DEGREE 2

typedef struct node {
  int key_count;
  int keys[MAX_DEGREE - 1];
  struct node *children[MAX_DEGREE];
  bool leaf;
} Node;

Node *create_node(bool leaf);
void insert_node(Node **node, int key);
void traverse_inorder(Node *node);

void insert_not_full(Node *node, int key);
void split(Node *root, int idx);
Node *add_node_to_root(Node *root, Node *node, int idx);
Node *add_keys_to_root(Node *root, Node *child, int idx);
Node *copy_keys_and_children(Node *node, Node *child);
Node *fill_empty_node(Node *node);

#endif
