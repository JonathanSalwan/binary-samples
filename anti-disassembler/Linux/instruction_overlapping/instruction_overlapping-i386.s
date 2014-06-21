.globl _start
	
.text
_start:
	mov $0xbbc10300, %eax
	mov $0x05000000, %ecx
	add %ecx, %eax
	jmp .-0xa
	add %ebx, %eax
	mov $0x0, %ebx
	mov $0x1, %eax
	int $0x80
