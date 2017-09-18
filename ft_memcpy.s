global _ft_memcpy

section .text

_ft_memcpy:
    mov rax,rdi     ;set rax to rdi, point rax to first byte before altering rdi position
    mov rcx,rdx     ;set rcx to rdx[third argument num of byte to be copied], rcx is require by rep movsb for count of number of byte to be copied
    rep movsb       ;move bytes from rsi to rdi
    ret