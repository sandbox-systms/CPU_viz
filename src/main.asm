global _start

%include constantes.inc                  ; inclue as constantes usadas no programa
%include macros.inc                      ; inclue as macros usadas no programa 

section .data  
; ==========================================================================
; aqui podem ser declaradas variáveis e mensagens a serem usadas no programa
; ==========================================================================

    msg db "CPUVIZ Iniciado",  10          ; mensagem a ser impressa, seguida de uma nova linha = /n
    len equ $ - msg                        ; comprimento da mensagem


section .text                              ; seção de código, onde ficam as instruções do programa
_start: 
    ; write (stdout, msg, len)
    mov rax, sys_write                     ; sys_write é a chamada de sistema para escrever na saída padrão
    mov rdi, stdout                        ; stdout é o descritor de arquivo para a saída padrão 
    mov rsi, msg                           ; endereço da mensagem a ser escrita
    mov rdx, len                           ; comprimento da mensagem   

    exit 0                                 ; chamada de sistema para sair do programa, com código de saída 0 (sucesso)             