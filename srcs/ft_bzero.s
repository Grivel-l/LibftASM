global ft_bzero

section .text
  ft_bzero:
    push rbp
    mov rbp, rsp
    mov rax, 0
    loop:
      cmp rax, rsi
      je done
      mov byte [rdi], 0
      inc rdi
      inc rax
      jmp loop
  done:
    pop rbp
    ret
