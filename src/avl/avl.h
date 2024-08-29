#ifndef AVL_H
#define AVL_H

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

typedef struct node {
  int val;
  struct node *left;
  struct node *right;
  int height;
} Node;

Node *find(int v, Node *n);
Node *find_min(Node *n);
Node *find_max(Node *n);
void cleanup(Node *n);

void print_tree(Node *head);

Node *new_node(int val);
Node *search(Node *head, int val);
Node *find_parent(Node *current, Node *parent, int val);
Node *insert_node(Node *head, int val);
Node *remove_node(Node *head, int val);

Node *rotate_left(Node *parent, Node *node);

bool is_leaf(Node *head);
int find_min_val_in_right_subtree(Node *root);

#endif
