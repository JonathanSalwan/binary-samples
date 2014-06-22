.globl _start

.text
_start:
	pushl	$0xdeadbeef
	movl	%esp, %ecx
	movq	(%ecx), %mm0
	paddb	(%ecx), %mm0
	movq	%mm0, (%ecx)
	fwait
	mov 	$0x0, %ebx
	mov 	$0x1, %eax
	int 	$0x80
