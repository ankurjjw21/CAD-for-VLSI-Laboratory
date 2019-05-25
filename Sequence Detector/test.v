`timescale 1ns / 1ps


module test;

	// Inputs
	reg sequence;
	reg clock;
	reg reset;

	// Outputs
	wire detector;

	// Instantiate the Unit Under Test (UUT)
	sequencedetector uut (
		.sequence(sequence), 
		.clock(clock), 
		.reset(reset), 
		.detector(detector)
	);
	initial clock=0;
	always #10 clock = ~clock;
	initial begin
		// Initialize Inputs

		reset = 1;
		sequence=0;
		#50;
		reset=0;
		#20;
		sequence=0;
      #20;
		sequence=0;
      #20;
		sequence=1;
      #20;
		sequence=0;
      #20;
		sequence=1;
      #20;
		sequence=1;
      #20;
		sequence=0;
      #20;
		// Add stimulus here

	end
      
endmodule

