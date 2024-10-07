.model small
.stack 100h
.data
    equal db 0dh,0ah,'numbers are equal$'
    notequal db 0dh,0ah,'numbers are not equal$'
    question db 0dh,0ah,'enter the number: $'
.code
    main proc 
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx,question
    int 21h

    mov ah,01h
    int 21h

    mov dl,'3'
    cmp al,dl
    je l1

    mov ah,09h
    lea dx,notequal
    int 21h

    mov ah,4ch
    int 21h
    l1:
        mov ah,09h
        lea dx,equal
        int 21h

        mov ah,4ch
        int 21h


    




    main endp
    end main