#include "heap.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

Heap *new_heap(int capactiy) {
  Heap *heap = (Heap *)malloc(sizeof(Heap));
  heap->elements = (int *)malloc(capactiy * sizeof(int));
  heap->size = 0;
  heap->tail = -1;
  heap->capacity = capactiy;
  return heap;
}

void resize_heap(Heap *heap) {
  heap->capacity *= 2;
  heap->elements = (int *)realloc(heap->elements, heap->capacity * sizeof(int));
}

void insert(Heap *heap, int val) {
  if (heap->tail >= (heap->capacity - 1)) {
    resize_heap(heap);
  }
  heap->tail += 1;
  heap->elements[heap->tail] = val;
  heap->size += 1;

  int i = heap->tail;
  while (i > 0 && heap->elements[get_parent_index(i)] < heap->elements[i]) {
    int t = heap->elements[i];
    int parent_index = get_parent_index(i);

    heap->elements[i] = heap->elements[parent_index];
    heap->elements[parent_index] = t;
    i = parent_index;
  }
}

bool is_empty(Heap *heap) { return heap->tail == -1; }

int get_left_child_index(int parent_index) { return (parent_index * 2) + 1; }
int get_right_child_index(int parent_index) { return (parent_index + 1) * 2; }
int get_parent_index(int idx) { return (int)(idx - 1) / 2; }

bool is_valid_index(Heap *heap, int index) {
  return index >= 0 && index <= heap->tail;
}

bool is_leaf(Heap *heap, int index) {
  return index > get_parent_index(heap->tail) && index <= heap->tail;
}

int get_left_child(Heap *heap, int index) {
  int len = heap->size;
  int left_child_index = get_left_child_index(index);
  if (left_child_index < len) {
    return heap->elements[left_child_index];
  }
  return -1;
}

int get_right_child(Heap *heap, int index) {
  int len = heap->size;
  int right_child_index = get_right_child_index(index);
  if (right_child_index < len) {
    return heap->elements[right_child_index];
  }
  return -1;
}

bool is_valid_heap(Heap *heap, int index, int len) {
  if (is_leaf(heap, index)) {
    return true;
  }
  printf("\n current_index: %d, len: %d, tail: %d", index, len, heap->tail);
  // 2 * i + 1 = left_child
  // 2 * i + 2 = right_child
  int current_element = heap->elements[index];
  printf("\ncurrent_element: %d", current_element);
  int right_child = get_right_child(heap, index);
  int left_child = get_left_child(heap, index);

  if (current_element >= left_child && current_element >= right_child &&
      is_valid_heap(heap, get_left_child_index(index), len) &&
      is_valid_heap(heap, get_right_child_index(index), len)) {
    return true;
  }

  return false;
}

void print_heap(Heap *heap) {
  int len = heap->size;
  for (int i = 0; i <= len; i++) {
    int current_element = heap->elements[i];
    int left_child = get_left_child(heap, i);
    int right_child = get_right_child(heap, i);
    printf("\n Current element: %d", current_element);
    if (left_child != -1) {
      printf(" - Left child: %d", left_child);
    }
    if (right_child != -1) {
      printf(" - Right child: %d", right_child);
    }
  }
}
