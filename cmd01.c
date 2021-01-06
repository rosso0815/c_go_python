#include <stdio.h>


#include "lib.h"

#define EURO 1.234

int main( int argc, char *argv[] )  {

    if( argc == 2 ) {
        printf("The argument supplied is %s\n", argv[1]);
    }
    else if( argc > 2 ) {
        printf("Too many arguments supplied.\n");

    }
    else {
        printf("One argument expected.\n");
    }

//  f0_void();

//    f0_int(8);

    int x = f0_addInt(8);
    printf("f0_AddInt = %d\n",x);
    printf("@@@ done");
}
