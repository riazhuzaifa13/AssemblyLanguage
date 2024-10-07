.model small
.stack 100h
.data
.code
main proc
mov ah,06h
mov al,8
mov bh,00010000b
mov cl,0
mov ch,0
mov dl,16
mov dh,16
int 10h

mov ah,4ch
int 21h 
main endp
end main