#include "heap.h"
#include <arthur_core.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {

  Heap *heap = new_heap(6);
  insert(heap, 90);
  insert(heap, 15);
  insert(heap, 10);
  insert(heap, 12);
  insert(heap, 2);
  insert(heap, 7);
  insert(heap, 3);

  int len = heap->size - 1;
  printf("\n");
  printf("\n=======\n");

  printf("\n=======\n");

  bool is_valid = is_valid_heap(heap, 0, len);
  printf("\nIS_VALID_HEAP ?");
  if (is_valid) {
    printf("\nYes");
  } else {
    printf("\nNo");
  }
  printf("\n");

  print_heap(heap);
  printf("\n");
  return 0;
}
