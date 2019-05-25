`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:34 04/07/2019 
// Design Name: 
// Module Name:    fulladder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
