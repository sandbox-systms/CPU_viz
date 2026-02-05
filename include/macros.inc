%macro exit 1 
    mov rax, sys_exit 
    mov rdi, %1
    syscall 
%endmacro

