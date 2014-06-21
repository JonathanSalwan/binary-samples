.globl _start

.text
_start:
	call	.+0x24
	popl	%eax

	mov	$1, %eax
	mov	$0, %ebx
	int	$0x80
	jmp	.-0x1f
