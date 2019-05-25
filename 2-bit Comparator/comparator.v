`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:55 04/07/2019 
// Design Name: 
// Module Name:    comparator 
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
module comparator(A,B, AequalsB, AgreaterB, AlessB);
input [1:0] A,B;
output AequalsB, AgreaterB, AlessB;

assign AequalsB = (A==B)?1:0;
assign AgreaterB = (A>B)?1:0;
assign AlessB = (A<B)?1:0;

endmodule
