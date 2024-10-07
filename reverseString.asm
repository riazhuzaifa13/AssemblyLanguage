.model small
.stack 100h
.data
    string db 'abc$'
.code
    main proc 
    mov ax,@data
    mov ds,ax

    lea si, string
    mov ah,09h
    int 21h

    mov cx,'3'

    l1:
        mov bx,[si]
        push bx
        inc si
    loop l1

    mov cx,'3'
    l2:
        pop bx
        mov ah,02h
        int 21h
    loop l2
    mov ah,4ch
    int 21h
    main endp
    end main