section .text

global _ft_strlen

_ft_strlen:
    cmp rdi, 0
    je _null
    xor rcx,rcx             ;zero rcx
    mov rsi,rdi
_func:
    cmp[rsi], byte 0        ;check if rsi is pointing to end of string (byte zero i.e '\0')
    je  _out                 ;if rdi equals end of string jump to out 
    inc rcx                 ;increment rcx
    inc rsi                 ;increment rsi(string pointer) to next byte.
    jmp _func

_out:
    mov rax,rcx             ;set rax to rcx value (rax return register)
    ret                     ;return

_null:
    mov rax,0
    ret
