.model small
.stack 100h
.data
    array db 'h','u','z','a','i','f','a'
.code
    main proc 
    
    mov ax,@data
    mov ds,ax

    lea si,array
    mov cx,'7'
    l1:
        mov dx,[si]
        inc si
        mov ah,02h
        int 21h

    loop l1
    mov ah,4ch
    int 21h
    main endp
    end main