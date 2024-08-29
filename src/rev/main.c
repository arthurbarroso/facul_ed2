#include "student.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  int length = 2;
  Student *students = (Student *)malloc(sizeof(Student) * length);
  insert_students(students, length);

  printf("Start array is\n");
  print_students(students, length);

  sort(students, length);

  printf("\nEnd array is\n");
  print_students(students, length);
  return 0;
}
