global ft_strlen

section .text
  ft_strlen:
    push rbp
    mov rbp, rsp
    mov al, 0
    mov rcx, -1
    repne scasb
    add rcx, 2
    neg rcx
    mov rax, rcx
    pop rbp
    ret
