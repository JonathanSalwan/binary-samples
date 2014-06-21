CFLAGS   = -Wall -Wextra -g
CPPFLAGS =
LDFLAGS  =

PTRACE = anti-ptrace
BREAKPOINT = breakpoint_detection

EXEC = $(PTRACE)-i386 $(PTRACE)-amd64 \
       $(BREAKPOINT)-i386 $(BREAKPOINT)-amd64

all: $(EXEC)

$(PTRACE)-i386: $(PTRACE).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(PTRACE)-amd64: $(PTRACE).c
	$(CC) -m64 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(BREAKPOINT)-i386: $(BREAKPOINT).c
	$(CC) -m32 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

$(BREAKPOINT)-amd64: $(BREAKPOINT).c
	$(CC) -m64 $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDFLAGS)

clean:
	@rm -f *~ $(PTRACE)-i386 $(PTRACE)-amd64 \
	          $(BREAKPOINT)-i386 $(BREAKPOINT)-amd64

