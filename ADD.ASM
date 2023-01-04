.model small
.stack 100h
.data
data segment
num1 db ?
num2 db ?
sum db ?
msg1 db 10,13,"Enter first number: $"
msg2 db 10,13,"Enter second number: $"
msg3 db 10,13,"sum is: $"
data ends

code segment
assume ds:data,cs:code
start:
mov ax,data
mov ds,ax
lea dx,msg1
mov ah,09h
int 21h
mov ah,01h
int 21h
sub al,30h
mov num1,al
lea dx,msg2
mov ah,09h
int 21h
mov ah,01h
int 21h 
sub al,30h
mov num2,al
add al,num1
mov sum,al
mov ah,0h
aaa
add ah,30h
add al,30h
mov bx,ax
lea dx,msg3
mov ah,9h
int 21h
mov ah,02h
mov dl,bh
int 21h
mov ah,02h
mov dl,bl
int 21h
mov ah,40h
int 21h
code ends
end start

