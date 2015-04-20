// Test Bench for AND gate

`timescale 1ns/ 10ps
module and_test;

	reg a_in, b_in;
	wire c_out;
	and_gate uut(.a(a_in), .b(b_in), .c(c_out));
	
	initial begin
		a_in = 1'b0;
		b_in = 1'b0;
		#20;
		
		a_in = 1'b0;
		b_in = 1'b1;
		#20;

		a_in = 1'b1;
		b_in = 1'b0;
		#20;

		a_in = 1'b1;
		b_in = 1'b1;
		#20;
	end
endmodule
