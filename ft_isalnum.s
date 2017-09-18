global _ft_isalnum

section .text

extern _ft_isdigit
extern _ft_isalpha

_ft_isalnum:
    call _ft_isdigit
    cmp rax,1
    je _true
    call _ft_isalpha
    cmp rax,1
    je _true
    jmp _false

_true:
    mov rax,1
    ret

_false:
    ret

