.model small
.stack 100h
.code
main proc
    mov cx, 4
    outer_loop:
        push cx
        mov cx, 4
        inner_loop:
            mov dl, '*'
            mov ah, 2
            int 21h
            loop inner_loop
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        pop cx
        loop outer_loop

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main