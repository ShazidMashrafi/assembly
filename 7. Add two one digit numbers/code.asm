.model small
.stack 100h
.data
    msg1 db "Input first number: $"
    msg2 db "Input second number: $"
    result db "Result: $"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, msg1
    int 21h

    mov ah, 1
    int 21h
    mov bl, al  ; Store first number in BL

    mov ah, 9
    lea dx, msg2
    int 21h

    mov ah, 1
    int 21h
    mov bh, al  ; Store second number in BH

    ; Display the result
    mov ah, 9
    lea dx, result
    int 21h

    add bl, bh    ; bl = bl + bh
    sub bl, '0'   ; Convert from ASCII to integer
    mov ah, 2
    mov dl, bl    ; print the sum
    int 21h

    exit:
    mov ah, 4ch
    int 21h
    main endp
end main