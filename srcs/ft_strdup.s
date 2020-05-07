global ft_strdup
extern malloc
extern ft_strlen
extern ft_memcpy

section .text
  ft_strdup:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_strlen
    inc rax
    push rax
    mov rdi, rax
    call malloc
    mov rdi, rax
    pop rdx
    pop rsi
    push rsi
    call ft_memcpy
    pop rax
    pop rbp
    ret
