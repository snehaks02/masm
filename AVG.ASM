data segment
msg1 db 10,13,"Enter num1:$"
msg2 db 10,13,"Enter num2:$"
msg3 db 10,13,"Enter num3:$"
msg4 db 10,13,"Average:$"
num1 db ?
num2 db ?
num3 db ?
avg db ?
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
        mov bl,al

        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov bh,al

        lea dx,msg3
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h



        mov ah,4ch
        int 21h
code ends
end start
