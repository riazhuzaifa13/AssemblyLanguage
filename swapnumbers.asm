.model small
.stack 100h
.data
.code
    main proc 
    mov ax,'1'
    push ax
    mov bx,'2'
    push bx

    pop ax
    mov dx,ax
    mov ah,02h
    int 21h

    pop bx
    mov dx,bx
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h
    main endp
    end main