


all: dnOS
run: dnOS
	qemu-system-i386 dnOS.bin
dnOS: auto.asm
	@-nasm -f bin -o dnOS.bin auto.asm

distclean:
	-@rm dnOS.bin

checkbin: dnOS
	@-od -t x1 -A n dnOS.bin
