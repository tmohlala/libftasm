global _ft_isprint

section .text

_ft_isprint:
    cmp rdi,32
    jl _false
    cmp rdi,126
    jg _false
    jmp _true

_false:
    mov rax,0
    ret

_true:
    mov rax,1
    ret