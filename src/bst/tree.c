#include "tree.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_STACK_SIZE 80

Node *new_node(int val) {
  Node *temp = (struct node *)malloc(sizeof(struct node));
  temp->val = val;
  temp->left = temp->right = NULL;
  return temp;
}

Node *find_parent(Node *current, Node *parent, int val) {
  if (current == NULL)
    return parent;

  int current_val = current->val;

  /* If `val` exists already, then we do not want to create
   * any new nodes
   */
  if (current_val == val) {
    return NULL;
  }

  if (current_val > val) {
    return find_parent(current->left, current, val);
  }
  if (current_val < val) {
    return find_parent(current->right, current, val);
  }
  return current;
}

Node *insert_node(Node *root, int val) {
  Node *temp = new_node(val);
  if (root == NULL)
    return temp;

  Node *parent = NULL;
  parent = find_parent(root, NULL, val);

  if (parent == NULL) {
    return root;
  }

  if (parent->val > val) {
    parent->left = temp;
  } else {
    parent->right = temp;
  }
  return root;
}

Node *search(Node *root, int val) {
  if (root == NULL) {
    return root;
  }
  printf("\n Search: %d", root->val);
  int node_val = root->val;

  if (val == node_val) {
    return root;
  }
  if (node_val < val) {
    return search(root->right, val);
  }
  if (node_val > val) {
    return search(root->left, val);
  }

  return root;
}

bool is_leaf(Node *head) { return (head->left == NULL && head->right == NULL); }

int find_min_val_in_right_subtree(Node *root) {
  Node *temp = root;
  while (temp->left != NULL) {
    temp = temp->left;
  }
  return temp->val;
}

Node *remove_node(Node *root, int val) {
  if (root == NULL)
    return root;

  int node_val = root->val;
  if (node_val < val) {
    root->right = remove_node(root->right, val);
  } else if (node_val > val) {
    root->left = remove_node(root->left, val);
  } else {

    if (is_leaf(root)) {
      free(root);
      return NULL;
    }
    if (root->left == NULL) {
      Node *temp = root->right;
      free(root);
      return temp;
    }
    if (root->right == NULL) {
      Node *temp = root->left;
      free(root);
      return temp;
    } else {
      int min_value_in_right_subtree = find_min_val_in_right_subtree(root);
      root->val = min_value_in_right_subtree;
      root->left = NULL;
      free(root->left);
      root->right = remove_node(root->right, min_value_in_right_subtree);
    }
  }
  return root;
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

void inorder(Node *node) {
  if (node != NULL) {
    inorder(node->left);
    printf("\n%d", node->val);
    inorder(node->right);
  }
}

void preorder(Node *node) {
  if (node != NULL) {
    printf("\n%d", node->val);
    inorder(node->left);
    inorder(node->right);
  }
}

void postorder(Node *node) {
  if (node != NULL) {
    inorder(node->left);
    inorder(node->right);
    printf("\n%d", node->val);
  }
}

Stack *create_stack(int capacity) {
  Stack *stack = (Stack *)malloc(sizeof(Stack));
  stack->capacity = capacity;
  stack->top = -1;
  stack->items = (Node **)malloc(stack->capacity * sizeof(Node *));
  return stack;
}

bool is_full(Stack *stack) { return stack->top - 1 == stack->capacity; }

bool is_empty(Stack *stack) { return stack->top == -1; }

void push(Stack *stack, Node *node) {
  if (is_full(stack)) {
    return;
  }
  stack->items[++stack->top] = node;
}

Node *pop(Stack *stack) {
  if (is_empty(stack))
    return NULL;

  return stack->items[stack->top--];
}

Node *peek(Stack *stack) {
  if (is_empty(stack))
    return NULL;
  return stack->items[stack->top];
}

void traverse_inorder(Node *root) {
  Node *temp_node = root;
  Stack *stack = create_stack(MAX_STACK_SIZE);
  bool flag = true;
  while (flag) {
    if (temp_node) {
      push(stack, temp_node);
      temp_node = temp_node->left;
    } else {
      if (!is_empty(stack)) {
        temp_node = pop(stack);
        printf("%d ", temp_node->val);
        temp_node = temp_node->right;
      } else {
        flag = false;
      }
    }
  }
}

void traverse_preorder(Node *root) {
  Node *temp_node = root;
  Stack *stack = create_stack(MAX_STACK_SIZE);
  bool flag = true;
  while (flag) {
    if (temp_node) {
      printf("%d ", temp_node->val);
      push(stack, temp_node);
      temp_node = temp_node->left;
    } else {
      if (!is_empty(stack)) {
        temp_node = pop(stack);
        temp_node = temp_node->right;
      } else {
        flag = false;
      }
    }
  }
}

void traverse_postorder(Node *root) {
  if (root == NULL)
    return;

  Stack *stack = create_stack(MAX_STACK_SIZE);
  do {
    while (root) {
      if (root->right)
        push(stack, root->right);
      push(stack, root);

      root = root->left;
    }

    root = pop(stack);

    if (root->right && peek(stack) == root->right) {
      pop(stack);
      push(stack, root);
      root = root->right;

    } else {
      printf("%d ", root->val);
      root = NULL;
    }
  } while (!is_empty(stack));
}
