.model small
.stack 100h
main proc
    mov ah, 1
    int 21h
    mov bl, al
    int 21h
    mov bh, al
    int 21h
    mov cl, al

    cmp bl, bh
    jge check_bl_cl
    jmp check_bh_cl

    check_bl_cl:
    cmp bl, cl
    jge set_bl
    jmp set_cl

    check_bh_cl:
    cmp bh, cl
    jge set_bh
    jmp set_cl

    set_bl:
    mov al, bl
    jmp print

    set_bh:
    mov al, bh
    jmp print

    set_cl:
    mov al, cl
    jmp print

    print:
    mov ah, 2
    mov dl, al
    int 21h
    jmp exit
    
    exit:
    mov ax, 4ch
    int 21h
    main endp
end main
    
