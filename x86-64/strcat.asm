format ELF64 as 'o'

public  strcat

extrn   strlen
extrn   strncat

section '.text' executable
strcat:
        enter   16, 0
        mov     qword [rbp-8],  rdi
        mov     qword [rbp-16], rsi
        call    strlen
        mov     rdi, qword [rbp-8]
        mov     rsi, qword [rbp-16]
        mov     rdx, rax
        call    strncat
        leave
        ret
