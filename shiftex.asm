IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	xor ax, ax
	mov al, 3
	shl al, 2
	
	xor ax, ax
	mov al, 120
	shr al, 3
		
	xor ax, ax	
	mov al, 10
	mov bl, al
	shl al, 4
	shl bl, 2
	add ax, bx
	
exit:
	mov ax, 04ch
	int 21h

END start


