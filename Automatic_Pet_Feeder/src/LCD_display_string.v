// Modified from John Loomis, http://www.johnloomis.org/
module LCD_display_string(index,out,state_code);
input [4:0] index;
input [4:0] state_code;
output [7:0] out;
reg [7:0] out;
// ASCII hex values for LCD Display
// Line 1
   always 
     case (index)
	5'h00: case (state_code)
			 5'b10000: out <= 8'h44;//D
			 default: out <= 8'h53;//S
			 endcase
	5'h01: case (state_code)
			 5'b00000: out <= 8'h74;//t
			 5'b10000: out <= 8'h6F;//o
			 default: out <= 8'h65;//e
			 endcase
	5'h02: case (state_code)
			 5'b00000: out <= 8'h61;//a
			 5'b10000: out <= 8'h6E;//n
			 default: out <= 8'h74;//t
			 endcase
	5'h03: case (state_code)
			 5'b00000: out <= 8'h72;//r
			 5'b10000: out <= 8'h65;//e
			 default: out <= 8'h20;//sp
			 endcase
	5'h04: case (state_code)
			 5'b00000: out <= 8'h74;//t
			 5'b00001: out <= 8'h43;//C
			 5'b00010: out <= 8'h4D;//M
			 5'b00100: out <= 8'h54;//T
			 5'b01000: out <= 8'h53;//S
			 5'b10000: out <= 8'h20;//sp
			 default: out <= 8'h20;//sp
			 endcase
	5'h05: case (state_code)
			 5'b00001: out <= 8'h6C;//l
			 5'b00010: out <= 8'h65;//e
			 5'b00100: out <= 8'h69;//i
			 5'b01000: out <= 8'h69;//i
			 default: out <= 8'h20;//sp
			 endcase
	5'h06: case (state_code)
			 5'b00001: out <= 8'h6F;//o
			 5'b00010: out <= 8'h61;//a
			 5'b00100: out <= 8'h6D;//m
			 5'b01000: out <= 8'h7A;//z
			 default: out <= 8'h20;//sp
			 endcase
	5'h07: case (state_code)
			 5'b00001: out <= 8'h63;//l
			 5'b00010: out <= 8'h6C;//l
			 5'b00100: out <= 8'h65;//e
			 5'b01000: out <= 8'h65;//e
			 default: out <= 8'h20;//sp
			 endcase
	5'h08: case (state_code)
			 5'b00001: out <= 8'h6B;//k
			 default: out <= 8'h20;//sp
			 endcase
	// Line 2
	5'h10: out <= 8'h50;//P
	5'h11: out <= 8'h72;//r
	5'h12: out <= 8'h65;//e
	5'h13: out <= 8'h73;//s
	5'h14: out <= 8'h73;//s
	5'h15: out <= 8'h20;//sp
	5'h16: out <= 8'h4F;//O
	5'h17: out <= 8'h6B;//k
	default: out <= 8'h20;
   endcase
endmodule
