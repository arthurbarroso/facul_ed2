#ifndef TREE_H
#define TREE_H

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

typedef struct heap {
  int *elements;
  int tail;
  int capacity;
  int size;
} Heap;

void print_heap(Heap *heap);

Heap *new_heap(int capacity);
void resize_heap(Heap *heap);
void insert(Heap *heap, int val);

int get_left_child_index(int parent_index);
int get_right_child_index(int parent_index);
int get_parent_index(int parent_index);

bool is_empty(Heap *heap);
bool is_valid_heap(Heap *heap, int index, int len);
bool is_valid_index(Heap *heap, int index);
bool is_leaf(Heap *heap, int index);
#endif
