CFLAGS   = -Wall -Wextra -std=c99 -g -z execstack
CPPFLAGS =
LDFLAGS  =


all: self-modifying-32

self-modifying-32: self-modifying-32.c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

self-modifying-32.o: self-modifying-32.s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
	rm -f self-modifying-32 self-modifying-32.o *~

