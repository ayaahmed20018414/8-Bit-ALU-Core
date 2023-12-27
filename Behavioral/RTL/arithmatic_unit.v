module ARITHMETIC_UNIT #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C,
output zero_flag,
output over_flow_flag,
output reg carry_out
);
reg bit_o;
always@(*)
 begin
	bit_o=1'b0;
	case({S2,S3})
    	2'b00:begin
		{carry_out,C}=A+B;
	      end
    	2'b01:begin
		 {bit_o,C}=A-B;
	      end
    	2'b11:begin
		 {bit_o,C}=~B+'d1;
	      end
	endcase
	

 end
assign zero_flag=~(|C);
assign over_flow_flag=(carry_out || bit_o) ? 1'b1:1'b0;










endmodule
