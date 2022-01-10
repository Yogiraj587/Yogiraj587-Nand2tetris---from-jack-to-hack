// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Pointer-arrays.asm


// for(i=0;i<n;i++){
// arr[i]=-1
//  }

// Pseudo code:-
// if(i==n) goto END
// else goto ITERATE

  @30
  D=A
  @arr
  M=D  // arr=30
  @10
  D=A
  @n
  M=D // n=10
  @i
  M=0   // i=0

(ITERATE)
 @i
 D=M
 @n
 D=D-M
 @END
 D;JEQ   // if i==n goto END  

 @arr
 D=M
 @i
 A=D+M
 M=-1  // RAM[arr+i]=-1

 @i
 M=M+1  // i=i+1

 @ITERATE
 0;JMP

(END)
 @END
 0;JMP