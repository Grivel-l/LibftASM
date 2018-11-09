section .text
	global ft_bzero

ft_bzero:
	mov rbx, 0
	rec:
	cmp rbx, rsi
	je done
	mov word [rdi], 0
	inc rdi
	inc rbx
	jmp rec

done:
