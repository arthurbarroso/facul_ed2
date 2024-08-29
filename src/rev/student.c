#include "student.h"

void sort(Student *students, int length)
{
    qsort(students, length, sizeof(Student), compare_students);
};

void insert_students(Student *students, int length)
{
    for (int i = 0; i <= length; i++)
    {
        char z;
        if (i == 0)
        {
            z = 'b';
        }
        if (i == 1)
        {
            z = 'a';
        }
        sprintf(students[i].name, "%c student %d", z, i);
        students[i].enrollment_number = i;
        strcpy(students[i].address, "alguma coisa");
        strcpy(students[i].dob, "1999");
    }
}

void remove_student(Student *students, int length, int enrollment_number)
{
    int idx = -1;
    for (int i = 0; i <= length; i++)
    {
        if (students[i].enrollment_number == enrollment_number)
        {
            idx = i;
        }
    }

    if (idx == -1)
        return;
    for (int k = idx; k < length; k++)
    {
        students[k] = students[k + 1];
    }

    // maybe realloc if i want to, but prob not best?
    length = length - 1;
}

int compare_students(const void *p1, const void *p2)
{
    const Student *st_a = (const Student *)p1;
    const Student *st_b = (const Student *)p2;
    return strcmp(st_a->name, st_b->name);
}

void print_students(Student *students, int length)
{
    for (int i = 0; i < length; i++)
    {
        printf("%d: %s \n", students[i].enrollment_number, students[i].name);
    }
}
