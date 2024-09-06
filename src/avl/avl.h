#ifndef AVL_H
#define AVL_H

#include <arthur_core.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

typedef struct node {
  int val;
  struct node *left;
  struct node *right;
  int height;
} Node;

Node *find(int v, Node *node);
Node *find_min(Node *node);
Node *find_max(Node *node);
void cleanup(Node *node);

void print_tree(Node *head);

Node *new_node(int val);
Node *search(Node *head, int val);
Node *find_parent(Node *current, Node *parent, int val);
Node *insert_node(Node *head, int val);
Node *remove_node(Node *head, int val);
int get_node_balance(Node *node);

Node *rotate_right(Node *root);
Node *rotate_left(Node *node);

bool is_leaf(Node *head);
int find_min_val_in_right_subtree(Node *root);
int get_height(Node *node);
void pretty_print(Node *node, int indent);

Node *get_min_val_node(Node *node);
Node *get_max_val_node(Node *node);

#endif
