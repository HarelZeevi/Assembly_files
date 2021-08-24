IDEAL
MODEL small
STACK 100h
DATASEG
	arr1 db 1 dup(10, 9, 8, 7)
	arr2 db 1 dup(4, 3, 2, 1)
	arr3 db 4 dup(0d)
CODESEG

start:
	mov ax, @data
	mov ds, ax
	xor ax, ax
	
	
	;------ Code Start ------
	mov bx, offset arr1 
	mov di, offset arr2
	mov si, offset arr3
	
	; first element 
	mov al, [byte ptr di]
	sub [byte ptr bx], al
	mov ah, [byte ptr bx] 
	mov [byte ptr si], ah
	
	; second element
	mov al, [byte ptr di + 1]
	sub [byte ptr bx + 1], al
	mov ah, [byte ptr bx + 1] 
	mov [byte ptr si + 1], ah	
	
	; third element
	mov al, [byte ptr di + 2]
	sub [byte ptr bx + 2], al
	mov ah, [byte ptr bx + 2] 
	mov [byte ptr si + 2], ah
	
	; fourth element
	mov al, [byte ptr di + 3]
	sub [byte ptr bx + 3], al
	mov ah, [byte ptr bx + 3] 
	mov [byte ptr si + 3], ah	
	
	
exit:
	mov ax, 04ch
	int 21h
END start


