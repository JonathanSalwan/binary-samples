#include <stdio.h>
#include <stdint.h>

int foo (void) {
  char buffer[8];
  char * ret;
  ret = buffer + 24;
  (*ret) += 7;
  return 0;
}

int main (void) {
  int i;
  foo ();
  i = 1;
  printf ("%d\n", i);
  return 0;
}

