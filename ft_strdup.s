global _ft_strdup

section .text

extern malloc
extern _ft_memcpy
extern _ft_strlen
extern _printf

_ft_strdup:
    mov rbx,rdi
    call _ft_strlen
    add rax,1
    push rax
    mov rdi,rax
    call malloc
    cmp rax,0
    je _out
    mov rdi,rax
    mov rsi,rbx
    pop rdx
    call _ft_memcpy

_out:
    ret