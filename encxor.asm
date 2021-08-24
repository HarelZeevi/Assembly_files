IDEAL
MODEL small
STACK 100h
DATASEG
	msg db 'I LIKE ASSEMBLY$'
	key db 00000001b 
CODESEG
start:
	mov ax, @data
	mov ds, ax

	xor si, si
	mov ax, offset key
	dec ax
	dec ax
	l1:
		xor [byte ptr si], 00000001b
		inc si
		cmp si, ax
		jle l1
	xor si, si
	l2:
		xor [byte ptr si], 00000001b
		inc si
		cmp si, ax
		jle l2
		
print :  
 mov dx, offset msg 
 mov ah, 9h 
 int 21h 
 mov ah, 2 ; new line 
 mov dl, 10  
 int 21h  
 mov dl, 13 
 int 21h
exit:
	mov ax, 04ch
	int 21h

END start


