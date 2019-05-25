`timescale 1ns / 1ps

module bcdadder(A,B,S,C);
input[3:0] A,B;
output[3:0] S;
output C;
reg[4:0] temp;
reg[3:0] S;
reg C;
always @ ( * )
	begin
		temp = A + B;
		if(temp > 9)
			begin
				temp = temp+6;
				C=1;
				S=temp[3:0];
			end
		else
			begin
				C=0;
				S=temp[3:0];
			end
	end
endmodule
