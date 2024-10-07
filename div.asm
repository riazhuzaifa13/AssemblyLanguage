.model small
.stack 100h
.data
    q db ?
    r db ?
    quotent db 0dh,0ah,'the quotent is: $'
    remainder db 0dh,0ah,'the remainder is: $'

.code
    main proc 
    mov ax,@data
    mov ds,ax

    mov ax,12
    mov bl,2
    div bl

    mov q,al
    mov r,ah

    lea dx,quotent
    mov ah,09h
    int 21h

    mov dl,q
    add dl,48
    mov ah,02h
    int 21h

    lea dx,remainder
    mov ah,09h
    int 21h

    mov dl,r
    add dl,48
    mov ah,02h
    int 21h

   

    mov ah,4ch
    int 21h
    main endp
    end main