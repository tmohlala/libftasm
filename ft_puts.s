section .text

global _ft_puts

extern _ft_strlen

_ft_puts:
    call _ft_strlen
    cmp rax,0
    je _out
_func:
    mov rsi,rdi                 ;set rsi to rdi value (rsi second argument in function)
    mov rdx,rax                 ;set rdx (message length) to the value of rax (return value from ft_strlen call)
    mov rax,1                   ;system call number(sys_call write)
    mov rdi,1                   ;file discriptor
    syscall                     ;system call write
    jmp _newline

_newline:
    lea rsi,[rel newline]       ;set rsi to rdi value (rsi second argument in function)
    mov rdx,1                   ;set rdx (message length) to the value of rax (return value from ft_strlen call)
    mov rax,1                   ;system call number(sys_call write)
    mov rdi,1                   ;file discriptor
    syscall                     ;system call write
    jmp _out

_out:
    ret

section .data
newline db 0xa
