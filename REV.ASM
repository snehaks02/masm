data segment
msg1 db "Enter string:$"
msg2 db "Reversed string:$"
str1 db 80 dup("$")
str2 db 80 dup("$")
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        lea dx,msg1
        mov ah,09h
        int 21h

        mov bl,0
        lea si,str1
        repeat:mov ah,01h
        int 21h
        cmp al,13
        je skip
        mov [si],al
        inc si
        inc bl
        jmp repeat

        skip:
        lea dx,msg2
        mov ah,09h
        int 21h
        mov cl,bl
        repeat1:dec si
        mov dx,[si]
        mov ah,02h
        int 21h
        loop repeat1

        mov ah,4ch
        int 21h

code ends
end start

