`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:32 04/07/2019 
// Design Name: 
// Module Name:    graytobinary 
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
module graytobinary(G,B);
input [3:0] G;
output[3:0] B;

assign B[3]=G[3];
assign B[2]=G[3]^G[2];
assign B[1]=G[3]^G[2]^G[1];
assign B[0]=G[3]^G[2]^G[1]^G[0];

endmodule
