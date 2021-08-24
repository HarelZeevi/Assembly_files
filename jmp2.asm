IDEAL
MODEL small
STACK 100h
DATASEG
	TimesToPrintX db -5;
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	; Ex A
	xor ax, ax
	
	mov ax, -3d
	cmp ax, 0
	jg greater0
	jle ExB
	greater0:
		dec ax
	
	ExB:
		; Ex B
		xor ax, ax
		
		mov ax, 3
		mov bx, 3
		cmp ax, bx
		jne ANotEqualB
		je ExC
		ANotEqualB:
			mov ax, bx
	
	ExC:
		; EX C
		xor ax, ax
		xor bx, bx
		
		var1 db 10d
		var2 db 8d
		mov al, [var1]
		cmp al, [var2]
		jg Var1Greater
		jle Var1NotGreater
		Var1Greater:
			mov ax, 1
			jmp ExD
		Var1NotGreater:
			mov ax, 0
	
	ExD:
		; EX D
		mov [var1], 5
		mov [var2], 5
		
		xor ax, ax
		mov al, [var1]
		cmp [var2], al
		je EqualVars
		jne NotEqualVars
		EqualVars:
			xor ax, ax
			mov al, [var1]
			add al, [var2]
			jmp ExE
		NotEqualVars:
			xor ax, ax
			mov al, [var1]
			sub al, [var2]
	
	ExE:
		; Ex E
		xor cx, cx
		cmp [TimesToPrintX], 0
		jle exit
		loopX:
			mov dl, 'x'  
			mov ah, 2h 
			int 21h	
			inc cl
			cmp cl, [TimesToPrintX]
			jne loopX		
		
	
exit:
	mov ax, 04ch
	int 21h	

END start


