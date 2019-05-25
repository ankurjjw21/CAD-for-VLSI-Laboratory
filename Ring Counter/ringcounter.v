`timescale 1ns / 1ps

module ringcounter(clk, reset, out);
input clk;
input reset;
output[3:0] out;
reg [3:0] a;
always @ (posedge (clk), reset)
	begin
		if(reset)
			a = 4'b0001;
		else
			a={a[2:0],a[3]};
	end
assign out = a;
endmodule
