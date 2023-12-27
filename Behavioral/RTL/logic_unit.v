module LOGIC_UNIT #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C
);
always@(*)
 begin
	case({S2,S3})
    	2'b00:begin
		C=A&B;
	      end
    	2'b01:begin
		 C=A^B;
	      end
    	2'b10:begin
		 C=A|B;
	      end
    	2'b11:begin
		 C=~B;
	      end
	endcase
	
 end



endmodule
