section .data
msg1 db " Matta addizione = "
len1 equ $ - msg1
msg2 db " Matta moltiplicazione = "
len2 equ $ - msg2

new_line db 0xA
   len_nl equ $ - new_line

section .bss
sum resb 1
result resb 1

section .text
global _start

_start:
mov	eax, '3'
sub	eax, '0'
mov	ebx, '4'
sub	ebx, '0'

add	eax, ebx
add	eax, '0'
mov	[sum], eax

mov	ecx, msg1
mov	edx, len1
mov	ebx, 1
mov	eax, 4
int	80h

mov	ecx, sum
mov	edx, 1
mov	ebx, 1
mov	eax, 4
int	80h

mov eax, 4
    mov ebx, 1
    mov ecx, new_line
    mov edx, len_nl
    int 80h

mov al, '3'
sub al, '0' 
mov bl, '2'
sub bl, '0'

mul bl 
add al, '0'
mov [result], al

mov eax, 4
mov ebx, 1
mov ecx, msg2
mov edx, len2
int 80h

mov eax, 4
mov ebx, 1
mov ecx, result
mov edx, 1
int 80h
	
mov	eax, 1
mov	ebx, 0
int	80h