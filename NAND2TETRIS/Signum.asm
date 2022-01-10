// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Signum.asm

// if R0>0, R1=1
// else  R1=0


 @R0
 D=M  // D=RAM[0]

 @R1
 M=1  // RAM[1] = 1
 
 @2
 D;JGT // If R0>0, goto 2

 @R1
 M=0   //RAM[1] = 0

 @8
 0;JMP // End of code