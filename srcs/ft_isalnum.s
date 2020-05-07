global ft_isalnum

section .text
  ft_isalnum:
    push rbp
    mov rbp, rsp
    cmp rdi, 48
    jb end
    cmp rdi, 58
    jb success
    cmp rdi, 65
    jb end
    cmp rdi, 91
    jb success
    cmp rdi, 97
    jb end
    cmp rdi, 123
    jb success
    end:
      mov rax, 0
      pop rbp
      ret
    success:
      mov rax, 1
      pop rbp
      ret
