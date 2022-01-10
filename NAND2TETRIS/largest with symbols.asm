//i here RAM[i]
//temp
// for(i=0;i<n;i++){  //n is length of array
//    if(address[i]>temp){
//      temp=address[i]
//  }
//}
  @0
  D=A
  @temp
  M=D

  @10
  D=A
  @n
  M=D

  @0
  D=A
  @i
  M=D

  @0
  D=A
  @x
  M=D

(ITERATE)
 @i
 D=M
 @n
 D=D-M
 @STORE
 D;JGE

(IFLOOP) 
@x
A=M
D=M
@temp
D=D-M
@ABC
D;JGE

@BCD
0;JMP

(ABC)
@x
A=M
D=M
@temp
M=D

(BCD)
@x
M=M+1

@i
M=M+1

@ITERATE
0;JMP 

(STORE)
@temp
D=M
@R10
M=D
@END
0;JMP

(END)
@END
0;JMP