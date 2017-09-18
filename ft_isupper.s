global _ft_isupper

section .text

_ft_isupper:
    cmp rdi,65
    jl _false
    cmp rdi,90
    jg _false
    jmp _true

_false:
    mov rax,0
    ret

_true:
    mov rax,1
    ret