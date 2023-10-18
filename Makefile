# this will need some changes based off your C compiler and assembler

compile:
	nasm -f elf64 -o main.o main.asm
	ld -o main.out main.o

dump:
	gcc main.c -o mainc.out
	objdump -d mainc.out

clean: 
	rm *.out

