global	_ft_strcat

section .text


_ft_strcat:
	mov	rbx, rdi

_func:
	cmp byte [rbx], 0
	je _func_
	add rbx,1
	jmp _func

_func_:
	cmp byte [rsi], 0
	je _out
	mov al, byte [rsi]
	mov byte [rbx], al
	inc rsi
	inc rbx
	jmp _func_

_out:
    mov [rbx],byte 0
	mov rax, rdi
	ret
