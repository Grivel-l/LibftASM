global ft_memset

section .text
  ft_memset:
    push rbp
    mov rbp, rsp
    push rdi
    mov rcx, rdx
    mov eax, esi 
    repne stosb
    pop rax
    pop rbp
    ret
