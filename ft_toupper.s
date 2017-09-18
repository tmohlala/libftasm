global _ft_toupper

section .text

extern _ft_islower

_ft_toupper:
    call _ft_islower
    cmp rax,1
    je _func
    jmp _out

_func:
    sub rdi,32

_out:
    mov rax,rdi
    ret
