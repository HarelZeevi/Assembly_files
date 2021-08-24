IDEAL
MODEL small
STACK 100h
DATASEG
	var1 db 032h
	var2 db 2
	var3 dw ?
	
	v1 db -7
	v2 db 100
	v3 dw ?
	
	ar1 db 1 dup(-1, -2, -3 ,-4)
	ar2 db 1 dup(-5, 6, -7 ,8)
	sum dw 4 dup(0)
CODESEG

start:
	mov ax, @data
	mov ds, ax
	xor ax, ax
	
	
	;------ Code Start ------
	mov ax, [word ptr var1]
	mul [byte ptr var2]
	mov [var3], ax
	
	mov ax, [word ptr v1]
	imul [byte ptr v2]
	mov [v3], ax

	
	mov di, offset ar1
	mov si, offset ar2
	
	mov ax, [word ptr di]
	imul [byte ptr si]
	add [word ptr sum], ax
	
	mov ax, [word ptr di + 1]
	imul [byte ptr si + 1]
	add [word ptr sum + 1], ax
	
	mov ax, [word ptr di + 2]
	imul [byte ptr si + 2]
	add [word ptr sum + 2], ax
	
	mov ax, [word ptr di + 3]
	imul [byte ptr si + 3]
	add [word ptr sum + 3], ax
exit:
	mov ax, 04ch
	int 21h
END start


