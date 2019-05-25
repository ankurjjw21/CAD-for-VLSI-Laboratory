`timescale 1ns / 1ps

module sequencedetector(sequence, clock, reset, detector);
input sequence, clock, reset;
output reg detector;
parameter zero=3'b000, one=3'b001, onezero=3'b011, onezeroone=3'b010, onezerooneone=3'b110;
reg[2:0] current, next;
always @ (posedge clock, posedge reset)
	begin
		if(reset)
			current <= zero;
		else
			current <= next;
	end

always @ (sequence, current)
begin
	case(current)
		zero: if(sequence)
					next <= one;
				else
					next <= zero;
		one: if(sequence)
					next <= one;
				else
					next <= onezero;
		onezero: if(sequence)
					next <= onezeroone;
				else
					next <= zero;
		onezeroone: if(sequence)
					next <= onezerooneone;
				else
					next <= onezero;
		onezerooneone: if(sequence)
					next <= one;
				else
					next <= onezero;
		default:	next <= zero;
	endcase
end
always @ (current)
begin
	case(current)
		zero: assign detector = 0;
		one: assign detector = 0;
		onezero: assign detector = 0;
		onezeroone: assign detector = 0;
		onezerooneone: assign detector = 1;
		default: assign detector = 0;
	endcase
end
endmodule