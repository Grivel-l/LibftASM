global ft_isprint

section .text
  ft_isprint:
    push rbp
    mov rbp, rsp
    cmp rdi, 32
    jb isnot
    cmp rdi, 126
    ja isnot
    mov rax, 1
    pop rbp
    ret
  isnot:
    mov rax, 0
    pop rbp
    ret
