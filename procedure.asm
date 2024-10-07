.model small
.stack 100h
.data
    msg1 db 'hi $'
    msg2 db 'how are you? $'
    msg3 db 'i am fine $'

.code
    main proc 
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,09h
    int 21h

    call enter

    lea dx,msg2
    mov ah,09h
    int 21h   

    call enter

    lea dx,msg3
    mov ah,09h
    int 21h   

    call enter
    mov ah,4ch
    int 21h
    main endp

    enter proc
    mov dx,10
    mov ah,02h
    int 21h

    mov dx,13
    mov ah,02h
    int 21h

    ret
    enter endp

    end main