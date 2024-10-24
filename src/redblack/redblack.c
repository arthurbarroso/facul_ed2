#include "redblack.h"
#include <arthur_core.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

Node *find(int _v, Node *node) { return node; }

Node *new_node(int val) {
  Node *node = (Node *)malloc(sizeof(Node));
  node->val = val;
  node->color = RED;
  node->left = node->right = node->parent = NULL;
  return node;
}

Color get_opposite_color(Color color) {
  switch (color) {
  case RED:
    return BLACK;
  case BLACK:
    return RED;
  }
}

Node *get_opposite_sibling(Node *parent, Node *current) {
  int current_val = current->val;
  if (parent->left != NULL) {
    if (parent->left->val == current_val) {
      return parent->right;
    }
    if (parent->right->val == current_val) {
      return parent->left;
    }
  }
  return NULL;
}

Node *recolor(Node *node) {
  // Changing the parent's color
  node->color = get_opposite_color(node->color);
  // Left children
  if (node->left != NULL)
    node->left->color = get_opposite_color(node->left->color);
  if (node->right != NULL) {
    node->right->color = get_opposite_color(node->right->color);
  }

  return node;
}

Node *insert(Node *root, int val) {
  if (root == NULL) {
    Node *new_root = new_node(val);
    new_root->color = BLACK;
    return new_root;
  }

  if (val < root->val) {
    root->left = insert(root->left, val);
  } else if (val > root->val) {
    root->right = insert(root->right, val);
  } else {
    return root;
  }

  Node *parent = root->parent;
  if (parent->color == BLACK) {
    // no violation
    return root;
  }

  if (parent->color == RED) {
    // root must have a red child,
    // which violates the red property

    Node *sibling = get_opposite_sibling(parent, root);
    if (sibling == NULL || sibling->color == BLACK) {
      // restructure
    }
    if (sibling != NULL && sibling->color == RED) {
      // recolor
    }
  }

  // Restore properties

  return root;
}
