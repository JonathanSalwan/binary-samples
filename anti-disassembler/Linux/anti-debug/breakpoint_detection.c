#include <stdio.h>
#include <stdlib.h>

#include <stdint.h>

#if defined(__i386__)
# define OFFSET 6
#elif defined(__amd64__)
# define OFFSET 4
#else
# define OFFSET 0
#endif

void
foo ()
{
  printf ("No breakpoint detected...\n");
}

int
main ()
{
  /* Looking for a breakpoint at foo() */
  if ((*(volatile unsigned *) ((uintptr_t) foo + OFFSET) & 0xff) == 0xcc)
    {
      printf ("Breakpoint detected!\n");
      exit (EXIT_FAILURE);
    }

  /* No breakpoint found */
  foo ();

  return EXIT_SUCCESS;
}
