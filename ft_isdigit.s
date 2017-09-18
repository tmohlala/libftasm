global _ft_isdigit

section .text

_ft_isdigit:
    cmp rdi,48
    jl _false
    cmp rdi,57
    jg _false
    jmp _true

_false:
    mov rax,0
    ret

_true:
    mov rax,1
    ret