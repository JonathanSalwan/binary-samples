.globl _start

.text
_start:
	call	.+0x24
	popl	%eax
	movb	$0xeb, 0xe(%eax)
	inc	%ebx
	movb	$0xeb, 0x6(%eax)
	movb	$0x08, 0x7(%eax)
	push	%eax
	cmc
	inc	%edx
	push	%ecx
	dec	%ebx
	mov	$1, %eax
	mov	$0, %ebx
	int	$0x80
	jmp	.-0x1f
