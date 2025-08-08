.model small
.stack 100h
.data
m db 'Hello$'
.code
main proc
    mov ax, @data
    mov ds, ax

    ; 1 -> single key input
    ; 2 -> single char output
    ; 9 -> string output

    mov ah, 9
    lea dx, m  ; lea to print string
    int 21h

    mov ah, 1
    int 21h
    mov bl, al

    mov ah, 2
    mov dl, bl  ; output the character    
    int 21h

    exit:
    mov ax, 4ch
    int 21h
    main endp
end main