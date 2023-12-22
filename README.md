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

If you run `make dump` you will see the dissasembly of both binaries.
Look at the difference between the two of them.
One of them is a few lines but the other one is incredibly long and complicated.
This is caused by the complex abstractions provided by `stdio.h`.

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
After this we syscall so the kernel executes our code.

After the syscall we enter a new part of our program, the exit stage.
Here we exit our program returning a success exit code.
Then we syscall again invoking the kernel to finish our program.

The final area of our code declares the variables used in the _start function.
It is much easier to use variables here especially for the memory operation.
The variable declaration syntax is reasonably simple, `name: value` in most situations.  

Congratulations, you just wrote a hello world program in Assembly!

