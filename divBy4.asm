IDEAL
MODEL small
STACK 100h
DATASEG 
CODESEG
	msk db 00000011b
	var db 62
start:
	mov ax, @data
	mov ds, ax
	xor ax, ax
	;------ Code Start ------
	mov al, [var]
	and al, [msk]
	
	mov [var], 64
	mov al, [var]
	and al, [msk]
	
	mov [var], 125
	mov al, [var]
	and al, [msk]
	
	mov [var], 234
	mov al, [var]
	and al, [msk]
	
	mov [var], 235
	mov al, [var]
	and al, [msk]
	
	mov [var], 165
	mov al, [var]
	and al, [msk]
	
exit:
	mov ax, 04ch
	int 21h
	
END start


