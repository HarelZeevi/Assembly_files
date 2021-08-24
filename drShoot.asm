IDEAL 
MODEL tiny
CODESEG
org 100h
start:
	draw:
		pop bx 
		mov [bx], al 
		add bx, 4
		mov [bx], al 
		sub bx, 2
		mov [bx], al
		add bx, 7
		mov [bx], al 
		add bx, 1
		mov [bx], al 
		add bx, 1
		mov [bx], ax 
		add bx, 2
		mov [bx], al 
		add bx, 1
		mov [bx], al 
		
		shr bx, 1
		add bx, 20
		push bx
		jmp draw 
END start