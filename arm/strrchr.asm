format ELF as 'o'

public  strrchr

extrn   strlen
extrn   memrchr

section '.text' executable
strrchr:
        push    {r0,r1,lr}
        bl      strlen
        add     r2, r0, #1
        pop     {r0,r1}
        bl      memrchr
        pop     {pc}

