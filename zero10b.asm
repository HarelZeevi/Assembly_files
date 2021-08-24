IDEAL
MODEL small
Stack 100h
DATASEG
digit db 10 dup (1) ; if we do not allocate some memory we may run over
; important memory locations

CODESEG
proc ZeroMemory ; Copy value 0 to 10 bytes in memory, starting at location bx
	xor al, al
	mov cx, 10
ZeroLoop :
	mov [bx], al
	inc bx
	loop ZeroLoop
	ret
endp ZeroMemory

start :
	mov ax, @data
	mov ds, ax
	mov bx, offset digit
	call ZeroMemory
exit :
	mov ax, 4C00h
	int 21h
	END start