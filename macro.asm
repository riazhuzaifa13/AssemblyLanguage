hello macro key
    lea dx,key
    mov ah,09h
    int 21h

endm


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

    hello msg1
    hello msg2
    hello msg3
  
    mov ah,4ch
    int 21h
    main endp

    end main