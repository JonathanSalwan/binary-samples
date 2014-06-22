.globl _start
	
.text
_start:
	movq	$0xdeadbeef, %rax
	pushq	%rax
	movq	%rsp, %rcx
	movq	(%rcx), %mm0
	paddb	(%rcx), %mm0
	movq	%mm0, (%rcx)
	fwait
	mov 	$0x0, %rbx
	mov 	$0x1, %rax
	int 	$0x80
