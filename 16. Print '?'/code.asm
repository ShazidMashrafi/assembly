.model small
.stack 100h
.code
main proc
    mov dl, '?'
    mov ah, 2
    int 21h

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main