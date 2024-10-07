dosseg
.model small
.stack 100h
.data
    msg1 db '  Parallelogram$'
.code
main proc
mov ax,@data
mov ds,ax
    mov ah, 6           ; Function 06h: Scroll up or clear window
    mov al, 0           ; AL = 0 to clear the window
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 20          ; Top-left row (0)
    mov cl, 5           ; Top-left column (0)
    mov dh, 20        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 25         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h             ; BIOS video interrupt
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 21           ; Top-left row (0)
    mov cl, 4           ; Top-left column (0)
    mov dh, 21        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 24         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 22           ; Top-left row (0)
    mov cl, 3           ; Top-left column (0)
    mov dh, 22        ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 23         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 23           ; Top-left row (0)
    mov cl, 2         ; Top-left column (0)
    mov dh, 23      ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 22         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 24           ; Top-left row (0)
    mov cl, 1         ; Top-left column (0)
    mov dh, 24      ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 21         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 
    mov bh, 00110000b         ; Attribute (07h = white on black)
    mov ch, 25           ; Top-left row (0)
    mov cl, 0         ; Top-left column (0)
    mov dh, 25      ; Bottom-right row (24, since text mode is 0-24 rows)
    mov dl, 20         ; Bottom-right column (79, since text mode is 0-79 columns)
    int 10h 

    mov dx, offset msg1
    mov ah, 9
    int 21h
    mov ah, 4Ch         ; Exit to DOS
    int 21h

main endp
end main