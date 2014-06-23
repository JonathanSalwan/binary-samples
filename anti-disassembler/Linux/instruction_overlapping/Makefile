CFLAGS   = -Wall -Wextra -std=c99 -g -nostdlib
CPPFLAGS =
LDFLAGS  =

all: instruction_overlapping-i386

%: %.s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

%.o: %.s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
	rm -f instruction_overlapping-i386 *~

