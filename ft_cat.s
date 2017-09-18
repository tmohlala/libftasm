global _ft_cat

section .text

_ft_cat:
    mov rax,8
    
section .data
    buffsize dw 43

section .bss
    buffer resb 
    