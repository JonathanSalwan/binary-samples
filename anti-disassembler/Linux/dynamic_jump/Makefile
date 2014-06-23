CFLAGS   = -Wall -Wextra -nostdlib
CPPFLAGS =
LDFLAGS  =

SRC = dynamic_jump
I386 = $(SRC)-i386
AMD64 = $(SRC)-amd64

all: $(I386) $(AMD64)

$(I386): $(I386).s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(AMD64): $(AMD64).s
	$(CC) -m64 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(I386) $(AMD64) *~

