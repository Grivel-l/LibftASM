global ft_puts
extern ft_strlen

section .text
  ft_puts:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_strlen
    mov rdx, rax
    mov rax, 1
    mov rdi, 1,
    pop rsi
    syscall
    pop rbp
    ret
