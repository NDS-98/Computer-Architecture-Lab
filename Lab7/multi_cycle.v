module multi_cycle(out,in,clk);
	output reg [19:0] out;
	input [9:0] in;
	input clk;
	
	always@(posedge clk)
	begin
		out[19] = (~in[0] & ~in[1] & ~in[2] & ~in[3]) | (in[0] & ~in[1] & ~in[2] & in[3]);
		out[18] = (~in[0] & ~in[1] & ~in[2] & in[3]);
		out[17] = (in[0] & in[1] & ~in[2] & ~in[3]) | (in[0] & ~in[1] & in[2] & ~in[3]);
		out[16] = (~in[0] & ~in[1] & ~in[2] & ~in[3]) | (in[0] & in[1] & ~in[2] & ~in[3]);
		out[15] = (in[0] & ~in[1] & in[2] & ~in[3]);
		out[14] = (~in[0] & ~in[1] & ~in[2] & ~in[3]);
		out[13] = (~in[0] & ~in[1] & in[2] & ~in[3]);
		out[12] = (in[0] & ~in[1] & ~in[2] & in[3]);
		out[11] = (~in[0] & ~in[1] & ~in[2] & in[3]);
		out[10] = (~in[0] & in[1] & in[2] & ~in[3]);
		out[9] = (~in[0] & ~in[1] & ~in[2] & in[3]);
		out[8] = (in[0] & ~in[1] & ~in[2] & ~in[3]) | (~in[0] & in[1] & ~in[2] & ~in[3]);
		out[7] = (~in[0] & ~in[1] & ~in[2] & ~in[3]) | (in[0] & ~in[1] & ~in[2] & ~in[3]);
		out[6] = (~in[0] & in[1] & ~in[2] & ~in[3]) | (~in[0] & in[1] & in[2] & ~in[3]) | (~in[0] & ~in[1] & ~in[2] & in[3]);
		out[5] = (~in[0] & ~in[1] & in[2] & ~in[3]) | (in[0] & in[1] & in[2] & ~in[3]);
		out[4] = (in[0] & in[1] & in[2] & ~in[3]);
		out[3] = (in[0] & ~in[1] & ~in[2] & ~in[3] & ~in[4] & in[5] & ~in[6] & ~in[7] & ~in[8] & ~in[9]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & ~in[4] & ~in[5] & in[6] & ~in[7] & ~in[8] & ~in[9]);
		out[2] = (in[0] & in[1] & ~in[2] & ~in[3]) | (~in[0] & in[1] & in[2] & ~in[3]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & ~in[4] & ~in[5] & ~in[6] & ~in[7] & ~in[8] & ~in[9]) | (~in[0] & in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & in[7] & ~in[8] & in[9]);
		out[1] = (~in[0] & in[1] & in[2] & ~in[3]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & ~in[4] & ~in[5] & ~in[6] & ~in[7] & ~in[8] & ~in[9]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & ~in[7] & ~in[8] & in[9]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & in[7] & ~in[8] & in[9]) | (~in[0] & in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & ~in[7] & ~in[8] & in[9]);
		out[0] = (~in[0] & ~in[1] & ~in[2] & ~in[3]) | (~in[0] & in[1] & in[2] & ~in[3]) | (in[0] & ~in[1] & ~in[2] & ~in[3] & ~in[4] & in[5] & ~in[6] & ~in[7] & ~in[8] & ~in[9]) | (~in[0] & ~in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & in[7] & ~in[8] & in[9]) | (~in[0] & in[1] & ~in[2] & ~in[3] & in[4] & in[5] & ~in[6] & ~in[7] & ~in[8] & in[9]);
	end
endmodule