`timescale 1ns / 1ps

module boothmultiplier(M,Q,AQ);
input signed [3:0] M,Q;
output reg signed [7:0] AQ;
reg Q0;
reg signed [3:0] A, MM;

integer i;
reg [1:0] t;

always @(*)
	begin
		A = 4'd0000;
		Q0 = 1'd0;
		MM = -M;
		AQ = {A[3:0],Q[3:0]};
				
		for(i=4; i>0; i=i-1)
			begin
				t = {AQ[0],Q0};
				case(t)
					2'd10: AQ[7:4] = AQ[7:4] + MM;
					2'd01: AQ[7:4] = AQ[7:4] + M;
					default: begin
								end
				endcase
				Q0 = AQ[0];
				AQ = AQ>>1;
				AQ[7]=AQ[6];

			end
	if(AQ[7])
		AQ = -AQ ;	
	end
	
endmodule
