.model small
.stack 100h
.data
    evenno db 0dh,0ah,'the number is evenno $'
    oddno db 0dh,0ah,'the number is oddno $'
.code
    main proc 
    mov al,20
    mov bl,2
    div bl

    cmp ah,0
    je evens

    lea dx,oddno
    jmp msg

    evens:
        lea dx,evenno
        jmp msg

    msg:
        mov ah,09h
        int 21h
        mov ah,4ch
        int 21h
    main endp

    end main