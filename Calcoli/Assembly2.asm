section .data
msg db "Matta sottrazione = "
len equ $ - msg

section .bss
sot resb 1

section .text
global _start

_start:
mov eax, '3'
sub eax, '0'
mov ebx, '2'
sub ebx, '0'

sub eax, ebx
add eax, '0'
mov [sot], eax

mov ecx, msg
mov edx, len
mov ebx, 1
mov eax, 4
int 80h

mov ecx, sot
mov edx, 1
mov ebx, 1
mov eax, 4
int 80h

mov eax, 1
mov ebx, 0 
int 80h