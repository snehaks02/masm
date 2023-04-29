data segment
arr db 20 dup(?)
msg1 db 10,13,"enter limit:$"
msg2 db 10,13,"the series:$"
count db ?
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
        sub al,30h
        mov count,al

        lea dx,msg2
        mov ah,09h
        int 21h

        mov si,offset arr
        mov al,00h
        mov [si],al
        mov al,01h
        inc si
        mov [si],al
        mov cl,count
        dec cl

        mov si,offset arr
        loop1:mov al,[si]
        mov bl,[si+1]
        add al,bl
        mov [si+2],al
        inc si
        dec cl
        jnz loop1

        mov cl,count
        mov si,offset arr
        loop2:mov dl,[si]
        add dl,30h
        mov ah,02h
        int 21h
        inc si
        dec cl
        jnz loop2

        mov ah,4ch
        int 21h
code ends
end start


        mov ah,4ch
        int 21h
code ends
end start
