.model small
.stack 100h
data segment
    msg db 10,13,"enter string 1: $"
    str1 db 13,?,13 dup("$")
    msg1 db 10,13,"enter string 2:$"
    str2 db 13,?,13 dup("$")
data ends
code segment
    assume cs:code,ds:data
    start:
        mov ax,data
        mov ds,ax

        mov dx,offset msg
        mov ah,09h
        int 21h

        mov dx,offset str1
        mov ah,0ah
        int 21h

        mov ah,2
        mov dx,10
        int 21h

        mov dx,offset msg1
        mov ah,09h
        int 21h

        mov dx,offset str2
        mov ah,0ah
        int 21h

        mov ah,2
        mov dx,10
        int 21h

        mov str1[1],8
        mov dx,offset str1
        mov ah,09h
        int 21h

        mov ah,2
        mov dx,10
        int 21h

        mov str2[1],8
        mov dx,offset str2
        mov ah,09h
        int 21h


        mov ah,4ch
        int 21h

code ends
end start
