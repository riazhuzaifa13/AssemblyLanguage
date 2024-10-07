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
    mov cl, 0           ; Top-left column (0)
    mov dh, 10        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 15         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h             ; BIOS video interrupt
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 9           ; Top-left row (0)
    mov cl, 1           ; Top-left column (0)
    mov dh, 9        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 14         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 8           ; Top-left row (0)
    mov cl, 2           ; Top-left column (0)
    mov dh, 8        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 13         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 7           ; Top-left row (0)
    mov cl, 3          ; Top-left column (0)
    mov dh, 7       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 12         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 

    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 6           ; Top-left row (0)
    mov cl, 4          ; Top-left column (0)
    mov dh, 6       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 11         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 5           ; Top-left row (0)
    mov cl, 5          ; Top-left column (0)
    mov dh, 5       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 10         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 

    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 4           ; Top-left row (0)
    mov cl, 6          ; Top-left column (0)
    mov dh, 4       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 9         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 3           ; Top-left row (0)
    mov cl, 7          ; Top-left column (0)
    mov dh, 3       ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 8         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h  
    mov ah, 4Ch         ; Exit to DOS
    int 21h

main endp
end main