.model small
.stack 100h
.code
main proc
    mov bl, 0          ; Start from ASCII 0
    mov cx, 26         ; 26 lines (for 260 chars, adjust as needed)

outer_loop:
    push cx
    mov cx, 10         ; 10 chars per line

    inner_loop:
        mov ah, 2
        mov dl, bl
        int 21h            ; Print ASCII char in bl
        
        inc bl
        cmp bl, 255
        je exit
        
        loop inner_loop

    mov ah, 2
    mov dl, 10         ; Newline
    int 21h
    mov dl, 13         ; Carriage return
    int 21h

    pop cx
    loop outer_loop

exit:
    mov ax, 4ch
    int 21h
    main endp
end main