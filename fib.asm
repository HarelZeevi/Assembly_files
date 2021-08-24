IDEAL
MODEL small
STACK 100h
DATASEG
	e1 db 0
	e2 db 1
	arr db 5 dup(0, 1)
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	mov cl, 8
	mov bx, offset arr
	add bx, 2
	fibo:
		mov dl, [e1]
		add dl, [e2]
		add bx, 1
		mov [bx], dl
		mov dh, [e2]
		mov [e1], dh
		mov [e2], dl 
		dec cx
		cmp cl, 0
		jne fibo

exit:
	mov ax, 4c00h
	int 21h
END start


