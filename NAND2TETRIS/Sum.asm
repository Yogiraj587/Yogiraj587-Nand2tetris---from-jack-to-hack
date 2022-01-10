// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Sum.asm

// Summation of n numbers
    @R0
    D=M
    @n
    M=D  // n=R0
    @i
    M=1  // i=1
    @sum
    M=0   // sum = 0
(LOOP)
    @i
    D=M
    @n
    D=D-M
    @STOP
    D;JGT   // if i>n goto stop
    @sum
    D=M
    @i
    D=D+M
    @sum
    M=D     // sum = sum+i
    @i
    M=M+1   // i=i+1
    @LOOP
    0;JMP
 (STOP)
    @sum
    D=M
    @R1
    M=D    // RAM[1] = sum
 (END)
    @END
    0;JMP