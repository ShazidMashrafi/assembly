.model small
.stack 100h
.data
    a db ?
    b db ?
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    sub al, '0'
    mov a, al

    mov ah, 1
    int 21h
    sub al, '0'
    mov b, al

    mov al, a   ; ax = a
    mov ah, 0  ; clear high byte for division
    div b   ;  ax = ax / b

    mov ah, 2
    add al, '0'  ; convert to ASCII
    mov dl, al
    int 21h

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main