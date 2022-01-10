// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Multi.asm

// a=R0
// b=R1
// n=0, where n is a variable.
// PRODUCT=0, where product is a variable.


@R0
D=M
@a
M=D   // a=R0

@R1
D=M
@b
M=D   // b=R1

@n
M=0 // n=0

@PRODUCT
M=0  // PRODUCT=0

//positive number
(POSITIVELOOP)

@0
D=A
@b
D=M-D  // checking whether b>0
@NEGATIVELOOP
D;JLT
      // if b>0, then enters into this loop
@n
D=M
@b
D=D-M  
@A1P
D;JEQ

@a  
D=M      // storing the value of a 
@PRODUCT
M=M+D  // the value of a is getting stored 
       // and adding the value of a b times.
@n
M=M+1    // the value of n increases by 1
@POSITIVELOOP
0;JMP

//output for positive numbers
(A1P)
@PRODUCT
D=M
@R2
M=D  // PRODUCT=R2
(END)
@END
0;JMP

//negative number
(NEGATIVELOOP)
@b
D=-M  // making the  value of b as positive
@mod
M=D  // storing the value of b in mod.

@n
D=M  
@mod
D=D-M  
@A1N
D;JEQ

@a
D=M    // storing the value of a 
@PRODUCT
M=M+D  // the value of a is getting stored 
       // and adding the value of a b times.
@n
M=M+1  // the value of n increases by 1
@NEGATIVELOOP
0;JMP

//output for negative numbers
(A1N)
@PRODUCT
D=-M  // making the product negative by keeping a negative sign.
@R2
M=D  // stroing the product in R2
(END)
@END
0;JMP
