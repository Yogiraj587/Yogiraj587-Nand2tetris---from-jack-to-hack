// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Screen-Rectangle.asm


 @22976
 D=A
 @addr   // addr=SCREEN
 M=D
 @R0
 D=M
 @n
 M=D     // n=RAM[0]
 @0
 D=A
 @i
 M=D     // i=0

(LOOP)
 @i
 D=M
 @n
 D=D-M  // if i>n goto END
 @END
 D;JGT

 @addr
 A=M
 M=-1  // RAM[addr]=-1

 @32
 D=A 
 @addr
 M=D+M  // addr=addr+32
 @i
 M=M+1   // i=i+1

 @LOOP
 0;JMP
 
(END)
 @END
 0;JMP
 