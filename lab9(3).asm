dosseg
.model small
.stack 100h
.data
.code
main proc
    mov ah, 6           ; Function 06h: Scroll up or clear window
    mov al, 0           ; AL = 0 to clear the window
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 10          ; Top-left row (0)
    mov cl, 5           ; Top-left column (0)
    mov dh, 10        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 25         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h             ; BIOS video interrupt
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 11           ; Top-left row (0)
    mov cl, 4           ; Top-left column (0)
    mov dh, 11        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 24         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 12           ; Top-left row (0)
    mov cl, 3           ; Top-left column (0)
    mov dh, 12        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 23         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 13           ; Top-left row (0)
    mov cl, 2         ; Top-left column (0)
    mov dh, 13      ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 22         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 


main endp
end main