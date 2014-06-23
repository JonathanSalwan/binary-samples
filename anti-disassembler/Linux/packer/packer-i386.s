.globl _start

.macro crypt start_addr end_addr
	.set current \start_addr
.endm
	
	
.text
_start:
	call	.+0x25
	popl	%esi
	addl	$0x11, %esi
	movl	%esi, %edi
	movl	$0x8, %ecx
	
decrypt:
        lodsb
        xor	$0xaa, %al
        stosb
        loop	.-0x4

hidden:
	xor	%eax, %eax
	add	$127, %eax
	imul	$125, %eax
	
end:	mov	$1, %eax
	mov	$0, %ebx
	int	$0x80
	jmp	.-0x25
