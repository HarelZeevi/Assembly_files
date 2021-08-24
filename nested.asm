IDEAL
MODEL small
STACK 100h
DATASEG
	rows db 5
	cols db 7
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	; input rows
	mov ah, 1h
	int 21h ; al stores now the ASCII code of the digit
	sub al, '0' ; now al stores the digit itself
	mov [rows], al
	
	; input cols
	mov ah, 1h
	int 21h ; al stores now the ASCII code of the digit
	sub al, '0' ; now al stores the digit itself
	mov [cols], al
	
	xor bx, bx
	mov bl, [cols]
	
	printAll:
		xor cx, cx
		mov cl, [rows]
		printX:
			mov dl, 'x'
			mov ah, 2h
			int 21h
			dec cx
			cmp cx, 0
			jne printX
		mov dl, 0ah
		mov ah, 2h
		int 21h
		
		dec bx
		cmp bx, 0
		jne printAll
		
exit:
	mov ax, 4c00h
	int 21h
END start


