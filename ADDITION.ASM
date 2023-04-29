data segment
msg1 db "Enter 1st num:$"
msg2 db 10,13,"enter 2nd num:$"
msg3 db 10,13,"sum:$"
a db ?
b db ?
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
        mov bh,01h
        int 21h
        mov bl,al

        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov ch,01h
        int 21h
        mov cl,al

        mov al,bl
        mov ah,00
        add al,cl
        aaa
        add ax,3030h
        mov bl,al
        mov al,ah
        mov ah,00h
        add al,bh
        add al,ch
        aaa
        add ax,3030h
        mov bh,al
        mov cl,ah

        lea dx,msg3
        mov ah,09h
        d
