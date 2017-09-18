global _ft_isascii

section .text

_ft_isascii:
    cmp rdi,0
    jl _false
    cmp rdi,127
    jg _false
    jmp _true

_false:
    mov rax,0
    ret

_true:
    mov rax,1
    ret