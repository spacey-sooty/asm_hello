Hello World in Assembly
=====

Hello World in Assembly designed for x86-64 Linux

## Dependencies
- an assembler
- objdump
- a c compiler
- make

## Why?
This code is the lowest possible level of describing the hello world program as assembly is just human readable machine code.
This code may seem overwhelming at first but in reality it is quite simple, just without the abstractions you are used to from other languages.  

If you run `make dump` you will see the assembly for the hello world C program.
This is *without* the included header `stdio.h`. You can see this code is much more complicated but the C file seems more simple.
This is due to the abstraction layer that the C standard library provides.
Understanding assembly allows us to write more efficient code even in higher level languages like C.  

## How does it work?
First of all we define the entry point to our program. In this program we choose `_start`.
Then we define our `_start` function.  

A quick note in Assembly a semicolon signifies a comment.  

Now that we are inside the `_start` function we can start to give it some information about what to do.
This explanation won't go super in depth on the registers used but I will try and explain what is happening.
Our first move operation says we are going to write some data.
The second move operation specifies where we are going to write data to.
In this case we write it to the STDOUT.
Then we specify the size of the write operation.
We simply specify it as the size of `Hello, world!\n`.
After this we syscall so our write takes effect.  

After the syscall we enter a new part of our program, the exit stage.
Here we exit our program returning a success exit code.
Then we syscall again moving onto the final section of our code.  

The final stage of our code declares the variables used in the _start function.
It is much easier to use variables here especially for the memory operation.
The variable declaration syntax is reasonably simple, `name: value` in most situations.  

Congratulations, you just wrote a hello world program in Assembly!

