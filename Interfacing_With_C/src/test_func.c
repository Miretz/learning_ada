#include "test_func.h"
#include <stdio.h>

extern int my_func_ada (int a);

void test_func() {
  int v = my_func_ada(2);
  printf("Hello from C! The result is %d\n", v);
}
