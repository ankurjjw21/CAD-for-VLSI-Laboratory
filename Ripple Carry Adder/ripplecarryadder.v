`timescale 1ns / 1ps

module fulladder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
wire c, d, e;
xor(c,a,b);
xor(s,c,cin);
and(e,c,cin);
and(d,a,b);
or(cout,e,d);
endmodule

module ripplecarryadder(A,B,S,C);
input [3:0] A;
input [3:0] B;
output [3:0] S;
output C;



wire c1,c2,c3;

fulladder f1(A[0],B[0],1'b0,S[0],c1);
fulladder f2(A[1],B[1],c1,S[1],c2);
fulladder f3(A[2],B[2],c2,S[2],c3);
fulladder f4(A[3],B[3],c3,S[3],C);

endmodule
