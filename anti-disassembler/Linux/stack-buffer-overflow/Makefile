CFLAGS   = -Wall -Wextra -std=c99 -g -static
CPPFLAGS =
LDFLAGS  =

SRC = stack-buffer-overflow
I386 = $(SRC)-i386
AMD64 = $(SRC)-amd64

all: $(I386) $(AMD64)

$(I386): $(SRC).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(AMD64): $(SRC).c
	$(CC) -m64 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(I386) $(AMD64) *~

