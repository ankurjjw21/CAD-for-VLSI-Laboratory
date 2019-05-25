`timescale 1ns / 1ps
module multiplexer(
	input [7:0] A,
	input [7:0] B,
	input [7:0] C,
	input [7:0] D,
	input [7:0] E,
	input [7:0] F,
	input [7:0] G,
	input [7:0] H,
	input [2:0] Sel,
	output [7:0] out
    );
reg [7:0] out;
always @ (A or B or C or D or E or F or G or H or Sel)
	begin
		case(Sel)
			3'b000: assign out = A;
			3'b001: assign out=B;
			3'b010: assign out=C;
			3'b011: assign out=D;
			3'b100: assign out=E;
			3'b101: assign out=F;
			3'b110: assign out=G;
			3'b111: assign out=H;
		endcase
	end
endmodule
