global ft_tolower

section .text
  ft_tolower:
    push rbp
    mov rbp, rsp
    cmp rdi, 65
    jb end
    cmp rdi, 90
    ja end
    mov rax, rdi
    add rax, 32
    pop rbp
    ret
  end:
    mov rax, rdi
    pop rbp
    ret
