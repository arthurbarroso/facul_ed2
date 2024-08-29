#ifndef STUDENT_H
#define STUDENT_H

#include <stdio.h>
#include <string.h>

typedef struct student_s
{
    char name[15];
    int enrollment_number;
    char address[15];
    char dob[15];
} Student;

void sort(Student *students, int n);
void insert_students(Student *students, int length);
int compare_students(const void *a, const void *b);
void print_students(Student *students, int length);
void remove_student(Student *students, int length, int enrollment_number);

#endif