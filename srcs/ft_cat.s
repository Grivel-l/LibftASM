global ft_cat

%define SIZE 2048

section .text
  ft_cat:
    push rbp
    mov rbp, rsp
    push rbx
    cmp di, 0
    jl done
  read:
    mov rax, 0
    mov rsi, buffer
    mov rdx, SIZE
    syscall
    cmp rax, 0
    jb done
    mov rbx, rax
    mov rdx, rbx
    mov rax, 1
    push rdi
    mov rdi, 1
    mov rsi, buffer
    syscall
    pop rdi
    cmp rbx, SIZE
    je read
  done:
    pop rbx
    pop rbp
    ret

section .bss
  buffer resb SIZE
