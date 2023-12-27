module SHIFTER_UNIT #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C
);
reg [WIDTH-1:0] bit_R,bit_L;
always@(*)
 begin
bit_R=A>>1;
bit_L=A<<1;
	case({S2,S3})
    	2'b00:begin
		C={A[0],bit_R[WIDTH-2:0]};
	      end
    	2'b01:begin
		 C={bit_L[WIDTH-1:1],A[WIDTH-1]};
	      end
    	2'b10:begin
		 C=bit_R;
	      end
    	2'b11:begin
		 C=bit_L;
	      end
	endcase
	
 end



endmodule
