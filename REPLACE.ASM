data segment
msg1 db "Enter a string :$"
msg2 db 10,13,"Enter a charchter to replace:$"
msg3 db 10,13,"enter a new character:$"
msg4 db 10,13,"String :$"
str1 db 80 dup("$")
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        lea dx,msg1
        mov ah,09h
        int 21h

        lea si,str1
        repeat:mov ah,01h
        int 21h
        cmp al,13
        jz skipp
        mov [si],al
        inc si
        jmp repeat

        skipp:lea dx,msg2
        mov ah,09h
        int 21h

        mov ah,01h
        int 21h
        mov cl,al

        lea dx,msg3
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov ch,al

        lea si,str1
        mov al,"$"
        repeat1:cmp [si],al
        jz skip
        repeat2:cmp cl,[si]
        jz skip1
        inc si
        jmp repeat2
        skip1:mov [si],ch
        inc si
        jmp repeat1
        lea dx,msg4
       skip: mov ah,09h
        int 21h

        lea dx,str1
        mov ah,09h
        int 21h

        mov ah,4ch
        int 21h
        
code ends
end start
