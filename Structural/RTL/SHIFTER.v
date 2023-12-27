module SHIFTER_UNIT #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C
);
wire [WIDTH-1:0] wire1,wire2;
SHIFTER_UNIT_AR #(.WIDTH(WIDTH))U0(.A(A),.S3(~S3),.C(wire1));
SHIFTER_UNIT_rotate #(.WIDTH(WIDTH))U1(.A(A),.S3(~S3),.C(wire2));

always@(*)
 begin
	case({S2,S3})
    	2'b00:begin
		C=wire2;
	      end
    	2'b01:begin
		 C=wire2;
	      end
    	2'b10:begin
		 C=wire1;
	      end
    	2'b11:begin
		 C=wire1;
	      end
	endcase
	
 end



endmodule
