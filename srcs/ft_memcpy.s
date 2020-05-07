global ft_memcpy

section .text
  ft_memcpy:
    push rbp
    mov rbp, rsp
    push rdi
    mov rcx, rdx
    rep movsb
    pop rax
    pop rbp
    ret
