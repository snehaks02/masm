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
        mov ch,al

        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov cl,al

        mov al,ch
        mov ah,00h
        add al,cl
        mov ch,al
        aaa
        add al,30h
        mov cl,ah

        lea dx,msg3
        mov ah,09h
        int 21h

        sub ah,30h
        mov dl,cl
        mov ah,02h
        int 21h
        mov dl,ch
        mov ah,02h
        int 21h

        mov ah,04h
        int 21h
code ends
end start
