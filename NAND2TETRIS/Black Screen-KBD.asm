// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Black Screen-KBD.asm


(LOOP)
 @SCREEN
 D=A
 @addr
 M=D   // addr=SCREEN
 
 @8191
 D=A
 @n
 M=D    // n=8191
 
 @i
 M=0   // i=0
 
 @KBD
 D=M  // Depends on the value entered
 @BLACKEN
 D;JNE

 (WHITEN)
  @i
  D=M
  @n
  D=D-M
  @LOOP
  D;JGT

  @addr
  A=M
  M=0  //RAM[addr]=0

  @i
  M=M+1  // i=i+1

  @addr
  M=M+1   //addr=addr+1

  @WHITEN
  0;JMP

(BLACKEN)
  @i
  D=M
  @n
  D=D-M
  @LOOP
  D;JGT

  @addr
  A=M
  M=-1  // RAM[addr]=-1

  @i
  M=M+1  // i=i+1
  @addr
  M=M+1  // addr=addr+1

  @BLACKEN
  0;JMP