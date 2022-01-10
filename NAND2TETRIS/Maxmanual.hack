0000000000000000 
// translating R0 to binary form
1111110000010000 
//for D=M, a=1, c1=1, c2=1, c3=0, c4=0, c5=0, c6=0, d1=0, d2=1, d3=0, No jump condition, so j1=0, j2=0, j3=0
0000000000000001 
//translating R1 to binary form
1111010011010000 
//for D=D-M, a=1, c1=0, c2=1, c3=0, c4=0, c5=1, c6=1, d1=0, d2=1, d3=0, No jump condition, so j1=0, j2=0, j3=0
0000000000001010 
//translating 10 to binary form
1110001100000001 
//for D;JGT, since D is computed, a=0, c1=0, c2=0, c3=1, c4=1, c5=0, c6=0. As there is no destination, d1=0, d2=0, d3=0. For JGT, j1=0, j2=0, j3=1
0000000000000001 
//translating 1 to its binary form
1111110000010000 
//for D=M, a=1, c1=1, c2=1, c3=0, c4=0, c5=0, c6=0, d1=0, d2=1, d3=0, No jump condition, so j1=0, j2=0, j3=0
0000000000001100 
//translating 12 to its binary form
1110101010000111 
//For computing 0, a=0, c1=1, c2=0, c3=1, c4=0, c5=1, c6=0. As there is no destination, d1=0, d2=0, d3=0. For JMP, j1=1, j2=1, j3=1
0000000000000000 
//translating R0 to its binary form
1111110000010000 
//for D=M, a=1, c1=1, c2=1, c3=0, c4=0, c5=0, c6=0, d1=0, d2=1, d3=0, No jump condition, so j1=0, j2=0, j3=0
0000000000000010 
//translating R2 to its binary form
1110001100001000 
//for M=D, as D is computed, a=0, c1=0, c2=0, c3=1, c4=1, c5=0, c6=0. As destination is M, d1=0, d2=0, d3=0. No, jump condition, so j1=0, j2=0, j3=0
0000000000001110 
//translating 14 to its binary form
1110101010000111 
//For computing 0, a=0, c1=1, c2=0, c3=1, c4=0, c5=1, c6=0. As there is no destination, d1=0, d2=0, d3=0. For JMP, j1=1, j2=1, j3=1
