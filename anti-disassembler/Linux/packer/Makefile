CFLAGS   = -Wall -Wextra -std=c99 -g -z execstack
CPPFLAGS =
LDFLAGS  =

I386 = packer-i386

all: $(I386)

$(I386): $(I386).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(I386).o: $(I386).s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
	rm -f $(I386) $(I386).o *~

