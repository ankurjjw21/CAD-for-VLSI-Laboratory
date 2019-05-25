`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:29 04/07/2019 
// Design Name: 
// Module Name:    paritychecker 
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
module paritychecker(X,Y,Z,ResEven,ResOdd);
input X,Y,Z;
output ResEven,ResOdd;

assign ResEven = X^Y^Z;
assign ResOdd = ~ResEven;
endmodule
