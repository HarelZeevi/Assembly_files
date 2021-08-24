IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	xor ax, ax 
	jmp add4;
	add ax, 5 
	add4:
		add ax, 4 

	
exit:
	mov ax, 04ch
	int 21h

END start


