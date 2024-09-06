#include "avl.h"
#include "arthur_core.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int get_height(Node *node) {
  if (node == NULL)
    return 0;
  return node->height;
}

void pretty_print(Node *node, int indent) {
  if (node != NULL) {
    char s[indent];
    if (indent) {
      for (int i = 0; i <= indent; i++) {
        strcat(s, "-");
      }
    }
    printf("%s%d\n", s, node->val);
    if (node->right)
      pretty_print(node->right, indent + 4);

    if (node->left)
      pretty_print(node->left, indent + 4);
  }
}

void cleanup(Node *node) {
  if (node != NULL) {
    cleanup(node->left);
    cleanup(node->right);
    free(node);
  }
}

Node *get_min_val_node(Node *node) {
  Node *current = node;
  while (current->left != NULL)
    current = current->left;

  return node;
}

Node *get_max_val_node(Node *node) {
  Node *current = node;
  while (current->right != NULL)
    current = current->right;
  return node;
}

Node *new_node(int val) {
  Node *node = (Node *)malloc(sizeof(Node));
  node->val = val;
  node->left = node->right = NULL;
  node->height = 1;
  return node;
}

/*
 *            ┌───┐
 *        ┌───┼ 3 │           ┌───┐
 *        │   └───┘        ┌──┼ 4 ┼──┐
 *      ┌─▼─┐              │  └───┘  │
 *   ┌──┼ 4 │            ┌─▼─┐     ┌─▼─┐
 *   │  └───┘            │ 3 │     │ 5 │
 * ┌─▼─┐                 └───┘     └───┘
 * │ 5 │
 * └───┘
 */
Node *rotate_right(Node *root) {
  Node *left_child = root->left;
  Node *left_child_right_child = left_child->right;

  left_child->right = root;
  root->left = left_child_right_child;

  int root_left_child_height = get_height(root->left);
  int root_right_child_height = get_height(root->right);
  int new_root_height =
      max(root_left_child_height, root_right_child_height) + 1;
  root->height = new_root_height;

  int left_left_height = get_height(left_child->left);
  int left_right_height = get_height(left_child->right);
  int new_left_height = max(left_left_height, left_right_height) + 1;

  left_child->height = new_left_height;

  return left_child;
}

/*
 * ┌───┐
 * │ 3 ┼───┐                   ┌───┐
 * └───┘   │                ┌──┼ 4 ┼──┐
 *       ┌─▼─┐              │  └───┘  │
 *       │ 4 ┼───┐        ┌─▼─┐     ┌─▼─┐
 *       └───┘   │        │ 3 │     │ 5 │
 *             ┌─▼─┐      └───┘     └───┘
 *             │ 5 │
 *             └───┘
 */
Node *rotate_left(Node *root) {
  Node *right = root->right;
  Node *right_left = right->left;

  right->left = root;
  root->right = right_left;

  int root_left_height = get_height(root->left);
  int root_right_height = get_height(root->right);
  int new_root_height = max(root_left_height, root_right_height) + 1;
  root->height = new_root_height;

  int right_left_height = get_height(right->left);
  int right_right_height = get_height(right->right);
  int new_right_height = max(right_left_height, right_right_height) + 1;

  right->height = new_right_height;
  return right;
}

Node *rotate_left_right(Node *root) {
  root->left = rotate_left(root->left);
  return rotate_right(root);
}

Node *rotate_right_left(Node *root) {
  root->right = rotate_right(root->right);
  return rotate_left(root);
}

/*
** Recursive until `root` is null, which means
** we've hit a leaf.
** Once we hit a leaf, we'll walk the call stack up back,
** fixing heights and then balancing stuff out
*/
Node *insert_node(Node *root, int val) {
  if (root == NULL)
    return new_node(val);

  if (val < root->val) {
    root->left = insert_node(root->left, val);
  } else if (val > root->val) {
    root->right = insert_node(root->right, val);
  } else {
    return root;
  }

  /* If we're here, then we've added ONE node to either side, so height will
be
   * height+1
   */
  root->height = max(get_height(root->left), get_height(root->right)) + 1;

  int bal = get_node_balance(root);

  if (bal > 1 && val < root->left->val)
    return rotate_right(root);

  if (bal < -1 && val > root->right->val)
    return rotate_left(root);

  if (bal > 1 && val > root->left->val) {
    root->left = rotate_left(root->left);
    return rotate_right(root);
  }

  if (bal < -1 && val < root->right->val) {
    root->right = rotate_right(root->right);
    return rotate_left(root);
  }

  return root;
}

Node *remove_node(Node *root, int val) {
  if (root == NULL)
    return root;

  if (val < root->val)
    root->left = remove_node(root->left, val);

  else if (val > root->val)
    root->right = remove_node(root->right, val);

  else {
    if ((root->left == NULL) || (root->right == NULL)) {
      Node *temp = root->left ? root->left : root->right;

      if (temp == NULL) {
        temp = root;
        root = NULL;
      } else
        *root = *temp;
      free(temp);
    } else {
      Node *temp = get_max_val_node(root->left);
      root->val = temp->val;
      root->right = remove_node(root->right, temp->val);
    }
  }

  if (root == NULL)
    return root;

  root->height = 1 + max(get_height(root->left), get_height(root->right));
  int balance = get_node_balance(root);

  if (balance > 1 && get_node_balance(root->left) >= 0)
    return rotate_right(root);

  if (balance > 1 && get_node_balance(root->left) < 0) {
    root->left = rotate_left(root->left);
    return rotate_right(root);
  }

  if (balance < -1 && get_node_balance(root->right) <= 0)
    return rotate_left(root);

  if (balance < -1 && get_node_balance(root->right) > 0) {
    root->right = rotate_right(root->right);
    return rotate_left(root);
  }

  return root;
}

int get_node_balance(Node *node) {
  if (node == NULL)
    return 0;
  return get_height(node->left) - get_height(node->right);
}

void print_tree(Node *root) {
  if (root != NULL) {
    Node *left = root->left;
    Node *right = root->right;
    printf("\n %d", root->val);
    if (left != NULL) {
      printf(" | Left: %d", left->val);
    }
    if (right != NULL) {
      printf(" | Right: %d", right->val);
    }
    print_tree(root->left);
    print_tree(root->right);
  }
}
