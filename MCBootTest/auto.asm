
mov dx, $

mov bx, 0x00

repeat:

	mov ah, 0eh
	mov al, [bx]
	int 10h
	
	add bx, 0x08

	cmp bx, dx
	je done
	
	jmp repeat

done:
	mov ah, 0Eh
	mov al, 'D'
	int 10h
	jmp $


times 510-($-$$) db 0

db 0x55
db 0xaa
