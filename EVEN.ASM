data segment
msg1 db "enter num:$"
msg2 db "entered num is odd$"
msg3 db "entered num is even$"
num db ?
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
        mov al,02h
        div bh
        cmp ah,00h
        je next

        lea dx,msg2
        mov ah,09h
        int 21h
        jmp exit

        next:
        lea dx,msg3
        mov ah,09h
        int 21h
        jmp exit

        exit:
        mov ah,4ch
        int 21h
code ends
end start
