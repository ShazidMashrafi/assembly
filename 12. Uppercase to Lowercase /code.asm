.model
.stack 100h
.code
main proc
    mov ah,1 
    int 21h
    mov bl, al

    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 2
    add bl, 32
    mov dl, bl
    int 21h

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main