global ft_isalpha

section .text
  ft_isalpha:
    push rbp
    mov rbp, rsp
    cmp rdi, 65
    jb isnot
    cmp rdi, 91
    jb end
    cmp rdi, 97
    jb isnot
    cmp rdi, 122
    ja isnot
  end:
    mov rax, 1
    pop rbp
    ret
  isnot:
    mov rax, 0
    pop rbp
    ret
