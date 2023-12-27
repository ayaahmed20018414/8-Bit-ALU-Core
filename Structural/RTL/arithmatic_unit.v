module ARITHMEMATIC_UNIT#(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C,
output zero_flag,
output over_flow_flag,
output reg carry_out
);
reg bit_o;
wire [WIDTH-1:0] wire1,carry,overflow,wire2,wire3,carry1;
adder_8_bit #(.WIDTH(WIDTH))U0(.A(A),.B(B),.Cin(1'b0),.C(wire1),.carry_out(carry));
subtractor_8_bit #(.WIDTH(WIDTH))U1(.A(A),.B(B),.C(wire2),.overflow(overflow));
adder_8_bit #(.WIDTH(WIDTH))U2(.A(~B),.B('d1),.Cin(1'b0),.C(wire3),.carry_out(carry1));
always@(*)
 begin
	bit_o=1'b0;
	case({S2,S3})
    	2'b00:begin
		C=wire1;
		carry_out=carry;
	      end
    	2'b01:begin
		C=wire2;
		bit_o=overflow;
	      end
    	2'b11:begin
		C=wire3;
		bit_o=carry1;
	      end
	endcase
	

 end
assign zero_flag=~(|C);
assign over_flow_flag=(carry_out || bit_o) ? 1'b1:1'b0;













endmodule 
