global _ft_tolower

section .text

extern _ft_isupper

_ft_tolower:
    call _ft_isupper
    cmp rax,1
    je _func
    jmp _out

_func:
    add rdi,32

_out:
    mov rax,rdi
    ret
