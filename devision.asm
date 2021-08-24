IDEAL 
MODEL small 
STACK 100h 
DATASEG 
CODESEG 
start :  
 mov ax, @data 
 mov ds, ax 
 mov al, 7 
 mov bl, 2 
 mov ah, 0 
 div bl 
 mov ax, 7 
 mov dx, 0 
 mov bx, 2 
 div bx 
quit :  
 mov ax, 4c00h 
 int 21h 
END start 