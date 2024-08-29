#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct node {
  int val;
  struct node *next;
} node_t;

void print_l(node_t *head) {
  node_t *current = head;
  while (current->next != NULL) {
    printf("\n[NODE]: %d", current->val);
    current = current->next;
  }
  if (current->next == NULL) {
    printf("\n[NODE]: %d", current->val);
    return;
  };
}

void push(node_t *head, int val) {
  node_t *current = head;
  // walking to the last node
  while (current->next != NULL) {
    current = current->next;
  }
  current->next = (node_t *)malloc(sizeof(node_t));
  current->next->val = val;
  current->next->next = NULL;
}

void prepend(node_t **head, int val) {
  node_t *new_node = (node_t *)malloc(sizeof(node_t));
  new_node->val = val;
  new_node->next = *head;
  *head = new_node;
}

int main() {
  // `head` is a pointer to a memory address
  // containing a `node`
  node_t *head = NULL;
  head = (node_t *)malloc(sizeof(node_t));

  if (head == NULL)
    return 1;

  head->val = 3;
  head->next = NULL;

  push(head, 40);
  push(head, 90);
  print_l(head);

  prepend(&head, 20);
  print_l(head);
  return 0;
}
