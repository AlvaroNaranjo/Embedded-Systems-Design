//Converts clocks Clkin to Clkout
module clk_convert (Clkin, enable, nclear, Clkout);
	input Clkin, enable, nclear;
	output Clkout;
	reg [25:0] Q;
	reg Clkout;
	
	always @ (posedge Clkin, negedge nclear)begin
		if (!nclear) Q <= 0;
		else if (enable)
			if (Q >= 50000000) begin
				Clkout = 1;
				Q <= 0;
				end
			else begin
			Clkout = 0;
			Q <= Q + 1;
			end
		end
endmodule