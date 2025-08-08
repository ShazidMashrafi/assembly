.model small
.stack 100h
.data
msg1 db 3 ; store 3 in msg1
msg2 db ? ; empty msg2
.code
main proc
    ; initialize data segment
    mov ax, @data
    mov ds, ax

    ; print msg1
    mov ah, 2
    add msg1, '0'
    mov dl, msg1
    int 21h

    ; take input in msg2
    mov ah,1
    int 21h
    mov msg2,al

    ; output msg2
    mov ah, 2
    mov dl, msg2
    int 21h

    ; exit program
    exit:
    mov ax, 4ch
    int 21h
    main endp
end main