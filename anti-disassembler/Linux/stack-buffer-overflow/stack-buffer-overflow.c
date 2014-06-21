
#include <stdlib.h>
#include <string.h>

int
foo (char *msg)
{
  char buffer[64];

  strcpy (buffer, msg);

  return EXIT_SUCCESS;
}

int
main (int argc, char *argv[])
{
  if (argc > 1)
    foo (argv[1]);

  return EXIT_SUCCESS;
}
