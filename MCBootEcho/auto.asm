


mov ah, 0Eh		; int 10h 'print char' function
mov dl, 0x09
repeat:
	mov al, 'd'
	int 10h


	mov al, 'n'
	int 10h


	mov al, 'O'
	int 10h


	mov al, 'S'
	int 10h


	mov al, 0x0A
	int 10h
	mov al, 0x0D
	int 10h

	sub dl, 1
	cmp dl, 0
	je done	

	jmp repeat
done:

jmp $

times 510-($-$$) db 0

db 0x55
db 0xaa
