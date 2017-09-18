global _ft_isalpha

section .text

extern _ft_islower
extern _ft_isupper

_ft_isalpha:
    call _ft_islower
    cmp rax,1
    je _true
    call _ft_isupper
    cmp rax,1
    je _true
    jmp _false

_true:
    mov rax,1
    ret

_false:
    ret

