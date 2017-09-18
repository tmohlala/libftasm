global _ft_memset

section .text

_ft_memset:
    mov rcx,rdx     ;set rcx to rdx, rcx required by stosb
    mov rax,rsi     ;set rax to rsi[byte to be copied], rax require by stosb
    mov rbx,rdi     ;set rbx to rdi[first byte of *void]
    rep stosb       ;copies a byte from (rax [al]) to (rdi)
    mov rax,rbx     ;set rax to rbx[first byte of *void]
    ret