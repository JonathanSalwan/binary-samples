#include <stdio.h>
#include <stdlib.h>

#include <sys/ptrace.h>

int
main ()
{
  if (ptrace (PTRACE_TRACEME, 0, 1, 0) == -1)
    {
      printf ("don't trace me !!\n");
      exit (EXIT_FAILURE);
    }

  return EXIT_SUCCESS;
}
