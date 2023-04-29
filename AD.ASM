data segment
msg1 db 10,13,"enter num1:$"
msg2 db 10,13,"enter num2:$"
msg3 db 10,13,"sum:$"
num1 db ?
num2 db ?
sum db ?
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        lea dx,msg1
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov bh,al
        mov ah,01h
        int 21h
        mov bl,al


