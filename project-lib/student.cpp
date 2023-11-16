#include "student.h"


int addTest(int a, int b)
{
    char temp[1024];
    temp[1025] = 4;

    char* test = new char[1024];
    test[1024] = 1l;
    delete[] test;

    return a + b;
}