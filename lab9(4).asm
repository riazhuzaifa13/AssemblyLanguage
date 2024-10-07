dosseg
.model small
.stack 100h
.data
    msg1 db 'Rectangle$'
.code
main proc
mov ax,@data
mov ds,ax
    mov ah, 6           ; Function 06h: Scroll up or clear window
    mov al, 0           ; AL = 0 to clear the window
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 10           ; Top-left row (0)
    mov cl, 0           ; Top-left column (0)
    ;mov dx, offset msg1
    ;mov ah, 9
    ;int 21h
    mov dh, 40       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 40        ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h             ; BIOS video interrupt

    mov dx, offset msg1
    mov ah, 9
    int 21h
    mov ah, 4Ch         ; Exit to DOS
    int 21h
main endp
end main