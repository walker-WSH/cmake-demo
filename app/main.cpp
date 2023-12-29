#include <stdio.h>
#include <stdlib.h>
#include "student.h"

void t()
{
	char* test = new char[1024];

	int c = addTest(999, 1);

	//fopen_s(0, 0, 0);
	//fopen(0, 0);

	test[1023] = 1l;
	delete[] test;
	delete[] test;
	printf("c = %d \n", c);

	printf("c = %d \n", c);
}

int main() {
	t();

	getchar();
	return 0;
}