.model small
.stack 100h

.data
data segment
	msg1 db 10,13,"Enter first number: $"
	msg2 db 10,13,"Enter second number: $"
	msg3 db 10,13,"Result is: $"

	menu db 10,13,"What do you want to do :",10,"1) Add",10,"2) Subtract", 10, "3) Multiply", 10, "$"
	
data ends

code segment
assume ds:data,cs:code

start:	
	mov ax,data
	mov ds,ax
	
	lea dx, msg1
	call print
	
	call read
	mov bl, al
	
	lea dx, msg2
	call print
	
	call read

	mov bh, al


	jmp su
	
	mov ah, 0
	mov al, bh
	mul bl
	jmp result

	ad:
		mov al, bl
		add al, bh
		jmp result

	su:
		mov al, bl
		sub al, bh		
	
	result:
		lea dx, msg3
		call print
	
		mov ah, 2
		mov dl, al
		add dl, '0'
		int 21h
	
	exit:
		mov ah, 4ch
		mov al, 0
		int 21h
	
	read:
		mov ah, 01h
		int 21h
		sub al,30h
		ret
	
	print:
		mov ah, 9h
		int 21h
		ret
		
code ends
end start
