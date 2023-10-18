# Hello World in Assembly
Hello World in Assembly designed for x86-64 Linux

## Dependencies
- an assembler
- objdump
- a c compiler
- make

## Why?
This code is the lowest possible level of describing the hello world program as assembly is just human readable machine code. This code may seem overwhelming at first but in reality it is quite simple, just without the abstractions you are used to from other languages.  

If you run the dump script you will see the assembly for the hello world C program. This is *without* the included header `stdio.h`. You can see this code is much more complicated but the C file seems more simple. This is due to the abstraction layer that the C standard library provides. Understanding assembly allows us to write more efficient code even in higher level languages like C.

