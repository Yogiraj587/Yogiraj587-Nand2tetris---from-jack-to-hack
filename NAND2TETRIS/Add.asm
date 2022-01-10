// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Add.asm

// Inputing value into RAM[0] and RAM[1] and RAM[2]
// RAM[1]=RAM[1]+RAM[0]
// RAM[2]=RAM[2]+RAM[1]
// RAM[3]=RAM[2]

@R0
D=M     // D=RAM[0]

@R1
D=D+M   // D=D+RAM[1]

@R2
D=D+M    // D=D+RAM[2]

@R3
M=D     // RAM[3]=D

@8
0;JMP