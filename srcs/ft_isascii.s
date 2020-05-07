global ft_isascii

section .text
  ft_isascii:
    push rbp
    mov rbp, rsp
    cmp rdi, 0
    jb isnot
    cmp rdi, 127
    ja isnot
    mov rax, 1
    pop rbp
    ret
    isnot:
      mov rax, 0
      pop rbp
      ret
