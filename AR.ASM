data segment
msg1 db 10,13,"Enter array size:$"
msg2 db 10,13,"Enter array elements:$"
msg3 db 10,13,"Array elements:$"
arr db 80 dup(?)
n db ?
k db ?
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        mov ch,00h
        lea dx,msg1
        mov ah,09h
        int 21h

        mov ah,01h
        int 21h
        sub al,30h
        cmp al,09h
        jle skip1
        sub al,07h
        skip1:mov n,al
        mov cl,n
        mov si,offset arr
        rpt:lea dx,msg2
        mov ah,09h
        int 21h


        
