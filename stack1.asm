IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
	; ex b
	mov ax, 1234h
	push ax
	
	;ex c
	pop ax
	
	;ex d
	push 5678h
	
	;ex e
	push ax
	pop bx

exit:
	mov ax, 4c00h
	int 21h
END start


