`include "multi_cycle.v"

module tb_multi_cycle;
	reg [9:0] inp;
	wire [19:0] out;
	reg clk;
	multi_cycle mc(out,inp,clk);
	
	always@(negedge clk)
		$monitor(,$time," INP = %b, OUT = %b",inp,out);
	
	always@(clk)
		#1 clk <= ~clk;
		
	initial
		begin
			clk=0;
			inp = 10'b0000000000;
			#2 inp = 10'b0000000000;
			#5 inp = 10'b0000000010;
			#5 inp = 10'b0000001010;
			#5 inp = 10'b0000101010;
			#5 inp = 10'b1100100011;
			#5 inp = 10'b1100100011;
			$finish;
		end
endmodule
			