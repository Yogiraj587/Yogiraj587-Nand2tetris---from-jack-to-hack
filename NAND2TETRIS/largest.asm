  @0
  D=A
  @50
  M=D

  @10
  D=A
  @51
  M=D

  @0
  D=A
  @52
  M=D

  @0
  D=A
  @53
  M=D

 @52
 D=M
 @51
 D=D-M
 @42
 D;JGE

@53
A=M
D=M
@50
D=D-M
@31
D;JGE

@36
0;JMP


@53
A=M
D=M
@50
M=D

@53
M=M+1

@52
M=M+1

@16
0;JMP


@50
D=M
@10
M=D
@48
0;JMP

@48
0;JMP