IDEAL 
MODEL small 
STACK 100h 
DATASEG 
	v1 db 9
	v2 db 4
	res1 db ?
	rem1 db ?
	
	var1 db 6
	var2 db 4
	res2 db ?
	rem2 db ?
	
	varr1 dw 60
	varr2 dw 45
	res3 dw ?
	rem3 dw ?
CODESEG 
start :  
	mov ax, @data 
	mov ds, ax
	; Ex A
	mov al, [byte ptr v1]
	mov ah, 0
	div [byte ptr v2]
	mov [byte ptr res1], al
	mov [byte ptr rem1], ah
	
	;Ex B
	mov al, [byte ptr var1]
	mov ah, 0
	div [byte ptr var1]
	mov [byte ptr res2], al
	mov [byte ptr rem2], ah
	
	;Ex C
	mov ax, [word ptr varr1]
	mov dx, 0
	div [word ptr varr2]
	mov [word ptr res3], ax
	mov [word ptr rem3], dx
	
quit :  
 mov ax, 4c00h 
 int 21h 
END start 