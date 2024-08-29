#ifndef TREE_H
#define TREE_H

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

typedef struct node {
  int val;
  struct node *left;
  struct node *right;
} Node;

typedef struct stack {
  Node **items;
  int capacity;
  int top;
} Stack;

Stack *create_stack(int capacity);
bool is_full(Stack *stack);

void print_tree(Node *head);

Node *new_node(int val);
Node *search(Node *head, int val);
Node *find_parent(Node *current, Node *parent, int val);
Node *insert_node(Node *head, int val);
Node *remove_node(Node *head, int val);
Node *peek(Stack *stack);

bool is_leaf(Node *head);
int find_min_val_in_right_subtree(Node *root);

void inorder(Node *node);
void preorder(Node *node);
void postorder(Node *node);

void traverse_inorder(Node *root);
void traverse_preorder(Node *root);
void traverse_postorder(Node *root);

#endif
