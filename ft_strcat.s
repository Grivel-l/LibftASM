section .text
	global ft_strcat

ft_strcat:
	push rdi
	jmp fwd_dest
	rec:
	mov cl, [rsi]
	cmp cl, 0
	je done
	mov [rdi], cl
	inc rdi
	inc rsi
	jmp rec

fwd_dest:
	mov cl, [rdi]
	cmp cl, 0
	je rec
	inc rdi
	jmp fwd_dest

done:
	pop rax
	ret
