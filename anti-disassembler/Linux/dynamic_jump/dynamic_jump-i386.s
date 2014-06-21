.globl _start
	
.text
_start:
	movl	$end, %eax
	jmp	*%eax
	nop
	add	$10, %eax
	nop
	nop
end:	mov	$0x0, %ebx
	mov	$0x1, %eax
	int	$0x80
