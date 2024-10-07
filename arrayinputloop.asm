.model small
.stack 100h
.data
    array db 3 dup(?)
    input db 0dh,0ah,'enter numbers: $'
    output db 0dh,0ah,'your numbers are: $'

.code
    main proc 
    
    mov ax,@data
    mov ds,ax

    lea si,array

    mov cx,'3'

    lea si,input
    mov ah,09h
    int 21h
    l1:
        mov ah,01h
        int 21h
        mov [si],al
        inc si

    loop l1

    mov ah,02h
    mov dl,10
    int 21h

    mov dl,13
    int 21h

    lea si,output
    mov ah,09h
    int 21h
    mov cx,'3'
    outputloop:
        mov dl,[si]
        mov ah,02h
        int 21h
        inc si
    loop outputloop
    mov ah,4ch
    int 21h
    main endp
    end main