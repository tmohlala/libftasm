global _ft_islower

section .text

_ft_islower:
    cmp rdi,97
    jl _false
    cmp rdi,122
    jg _false
    jmp _true

_false:
    mov rax,0
    ret

_true:
    mov rax,1
    ret