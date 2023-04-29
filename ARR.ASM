data segment
arr db 5 dup(?)
count equ 4
zero equ 0
one equ 1
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        mov cx,5
        mov si,offset arr
        mov ah,01h
        loophere1:
        int 21h
        mov [si],al
        inc si
        dec cx
        jnz loophere1

        mov dx,zero

        outer:
        mov si,offset arr
        mov cx,count

        inner:
        mov bl,[si]
        jle increment
        xchg bl,[si+1]
        mov [si],bl
        inc si
        dec cx
        cmp cx,zero
        jne inner
        inc dx
        cmp dx,count
        jne outer
        jmp exit

        increment:
        inc si
        dec cx
        cmp cx,zero

        jne inner
        inc dx
        cmp dx,count
        jne outer
        jmp exit

        exit:
        mov si,offset arr
        mov cx,5
        mov ah,02h
        mov dl,10
        int 21h
        loophere:
        mov dl,[si]
        int 21h
        inc si
        dec cx
        jnz loophere

        mov ah,4ch
        int 21h

code ends
end start
