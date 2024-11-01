#include "btree.h"
#include <stdbool.h>

Node *fill_empty_node(Node *node) {
  for (int i = 0; i < MAX_DEGREE; i++) {
    node->children[i] = NULL;
  }
  return node;
}

Node *create_node(bool leaf) {
  Node *node = (Node *)malloc(sizeof(Node));
  node->key_count = 0;
  node->leaf = leaf;
  node = fill_empty_node(node);
  return node;
}

Node *copy_keys_and_children(Node *node, Node *child) {
  for (int i = 0; i < MAX_DEGREE / 2 - 1; i++) {
    node->keys[i] = child->keys[i + MAX_DEGREE / 2];
  }

  if (!child->leaf) {
    for (int i = 0; i < MAX_DEGREE / 2; i++) {
      node->children[i] = child->children[i + MAX_DEGREE / 2];
    }
  }
  return node;
}

Node *add_keys_to_root(Node *root, Node *child, int idx) {
  int root_key_count = root->key_count;
  for (int i = root_key_count - 1; i >= idx; i--) {
    root->keys[i + 1] = root->keys[i];
  }
  root->keys[idx] = child->keys[MAX_DEGREE / 2 - 1];
  root->key_count = root_key_count + 1;
  return root;
}

Node *add_node_to_root(Node *root, Node *node, int idx) {
  int root_key_count = root->key_count;
  for (int i = root_key_count; i > idx; i--) {
    root->children[i + 1] = root->children[i];
  }
  root->children[idx + 1] = node;
  return root;
}

void split(Node *root, int idx) {
  Node *child = root->children[idx];
  Node *node = create_node(child->leaf);

  int key_count_change = MAX_DEGREE / 2 - 1;
  node->key_count = key_count_change;

  node = copy_keys_and_children(node, child);
  child->key_count = key_count_change;

  root = add_node_to_root(root, node, idx);
  root = add_keys_to_root(root, child, idx);
}

void insert_not_full(Node *node, int key) {
  int i = node->key_count - 1;
  if (node->leaf) {
    while (i >= 0 && node->keys[i] > key) {
      node->keys[i + 1] = node->keys[i];
      i--;
    }
    node->keys[i + 1] = key;
    node->key_count++;
  } else {
    while (i >= 0 && node->keys[i] > key) {
      i--;
    }
    i++;

    // FULL
    if (node->children[i]->key_count == MAX_DEGREE - 1) {
      split(node, i);

      if (node->keys[i] < key) {
        i++;
      }
    }
    insert_not_full(node->children[i], key);
  }
}

void insert_node(Node **root, int key) {
  Node *node = *root;
  if (node == NULL) {
    // leaf!
    *root = create_node(true);
    (*root)->key_count = 1;
    (*root)->keys[0] = key;
  } else {
    if (node->key_count == MAX_DEGREE - 1) {
      // full
      Node *n_root = create_node(false);
      n_root->children[0] = node;
      split(n_root, 0);
      *root = n_root;
    }
    insert_not_full(*root, key);
  }
}

void traverse_inorder(Node *node) {
  if (node != NULL) {
    int i;
    for (i = 0; i < node->key_count; i++) {
      traverse_inorder(node->children[i]);
      printf("Node: %d\n", node->keys[i]);
    }
    traverse_inorder(node->children[i]);
  }
}
