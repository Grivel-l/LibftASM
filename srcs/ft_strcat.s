global ft_strcat

section .text
  ft_strcat:
    push rbp
    mov rbp, rsp
    push rdi
    jmp fwd
    cat:
      mov al, [rsi]
      cmp al, 0
      je appendNull
      mov [rdi], al
      inc rdi
      inc rsi
      jmp cat
  fwd:
    mov al, [rdi]
    cmp al, 0
    je cat
    inc rdi
    jmp fwd
  appendNull:
    inc rdi
    mov byte [rdi], 0
  done:
    pop rax
    pop rbp
    ret
