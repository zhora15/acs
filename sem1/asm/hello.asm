SECTION .data
	helloWorld: db "Hello World!", 10
	len: equ $- helloWorld

SECTION .text
global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, helloWorld
	mov edx, len
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h 
