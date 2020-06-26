
#include "lib.h"

#include <stdlib.h>
#include <stdio.h>


void f0_void(void) {
	printf("f0_void\n");
}

void f0_int(int i) {
	printf("f0_int = %d\n",i);
}

void f0_string(char t[255]) {
	printf("f0_string = %s\n", t);
}

int f0_addInt(int i){
	printf("f0_AddInt = %d\n",i);
	return i+1;
}
