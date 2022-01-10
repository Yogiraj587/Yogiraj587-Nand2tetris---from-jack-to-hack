// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Flip.asm

// hi=R0
// R0=R1
// R1=hi

 @R0
 D=M
 @hi
 M=D   // hi=R0

 @R1
 D=M
 @R0
 M=D  // R0=R1

 @hi
 D=M
 @R1
 M=D  // R1=hi

 @12
 0;JMP
