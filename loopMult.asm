IDEAL
MODEL small
STACK 100h
DATASEG
	var1 db 8
	var2 db 9
	sum dw 0
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	mov cl, [var2]
	xor ax, ax
	mov al, [var2]
	multiply:
		add [sum], ax
		dec cx
		cmp cx, 0
		jne multiply

exit:
	mov ax, 4c00h
	int 21h
END start


