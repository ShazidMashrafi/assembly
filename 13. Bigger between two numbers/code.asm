.model small
.stack 100h
.code
main proc
    mov ah, 1
    int 21h
    mov bl, al

    mov ah, 1
    int 21h
    mov bh, al

    cmp bl, bh
    jg bl_is_bigger
    jmp bh_is_bigger

    bl_is_bigger:
    mov ah, 2
    mov dl, bl
    int 21h
    jmp exit

    bh_is_bigger:
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main