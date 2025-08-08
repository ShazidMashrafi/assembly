.model small
.stack 100h
.code
main proc
    mov ah, 1 ; Read character from standard input
    int 21h
    mov bl, al ; store character in bl

    mov ah, 1 ; Read character from standard input
    int 21h
    mov bh, al; store character in bh

    mov ah, 2 ; Output character in bl
    mov dl, bl
    int 21h

    mov ah, 2 ; Output character in bh
    mov dl, bh
    int 21h

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main