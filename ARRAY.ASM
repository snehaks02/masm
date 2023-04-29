data segment
arr db 10 dup(?)
msg db 10,13,"enter elements:$"
msg1 db 10,13,"length is:$"
msg2 db 10,13,"key to be searched:$"
msg3 db 10,13,"key found$"
msg4 db 10,13,"key not found$"
count db ?
key db ?
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        lea dx,msg
        mov ah,09h
        int 21h

        mov si,offset arr
        mov cl,00h
        mov dl,13
        mov ah,01h

        read:
        int 21h
       
