global _ft_bzero

section .text

_ft_bzero:
    mov rcx,rsi
    mov rsi,rdi
_func:
    cmp rcx,0
    je _out
    mov byte [rsi],0
    dec rcx
    lodsb
    jmp _func

_out:
    ret
