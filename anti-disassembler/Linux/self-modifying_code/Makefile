CFLAGS   = -Wall -Wextra -std=c99 -g -z execstack
CPPFLAGS =
LDFLAGS  =

I386_T1 = self-modifying-type1-i386

all: $(I386_T1)

$(I386_T1): $(I386_T1).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(I386_T1).o: $(I386_T1).s
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
	rm -f $(I386_T1) $(I386_T1).o *~

