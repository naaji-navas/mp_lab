.model small
.stack 100h
.data
        m db "what are you doing$"
.code
        mov ax,@data
        mov ds,ax
        lea dx,m
        mov ah,09h
        int 21h
        mov ah,4ch
        int 21h
end
