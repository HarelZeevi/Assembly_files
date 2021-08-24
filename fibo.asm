IDEAL
MODEL small
STACK 100h
DATASEG
	arr db 10 dup(0)
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	xor ax, ax 
	LFibo:
		

	
exit:
	mov ax, 04ch
	int 21h

END start


