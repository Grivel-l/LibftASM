global ft_isdigit

section .text
  ft_isdigit:
    push rbp
    mov rbp, rsp
    cmp rdi, 48
    jb end
    cmp rdi, 57
    ja end
    mov rax, 1
    pop rbp
    ret
  end:
    mov rax, 0
    pop rbp
    ret
