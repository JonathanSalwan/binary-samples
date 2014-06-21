CFLAGS   = -Wall -Wextra -std=c99 -g
CPPFLAGS =
LDFLAGS  =

I386 = pc_manipulation-i386
AMD64 = pc_manipulation-amd64

all: $(I386) $(AMD64)

$(I386): $(I386).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(AMD64): $(AMD64).c
	$(CC) -m64 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(I386) $(AMD64) *~

