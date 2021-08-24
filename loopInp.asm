IDEAL
MODEL small
STACK 100h
DATASEG
	arr db 5 dup(0)
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	mov bx, offset arr
	mov cl, 5 
	inputUser:
		mov ah, 1h
		int 21h ; al stores now the ASCII code of the digit
		mov [bx], al
		add bx, 1
		loop inputUser

exit:
	mov ax, 4c00h
	int 21h
END start


