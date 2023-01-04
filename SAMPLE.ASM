.model small
.stack 100h
.data
string db "THIS IS A SAMPLE STRING$"
.code
mov ax, @data
mov ds, ax
lea dx, string
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
end

