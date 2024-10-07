.model small
.stack 100h
.data
.code
    main proc

    mov dl,'a'
    mov ah,02h
    int 21h

    mov dl,'l'
    mov ah,02h
    int 21h

    mov dl,'i'
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h

    main endp
    end main