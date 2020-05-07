global ft_toupper

section .text
  ft_toupper:
    push rbp
    mov rbp, rsp
    cmp rdi, 97
    jb end
    cmp rdi, 122
    ja end
    mov rax, rdi
    sub rax, 32
    pop rbp
    ret
  end:
    mov rax, rdi
    pop rbp
    ret
