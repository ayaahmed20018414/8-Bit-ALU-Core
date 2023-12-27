module subtractor_8_bit #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
output [WIDTH-1:0] C,
output overflow);
adder_8_bit #(.WIDTH(WIDTH))U0(.A(A),.B(~B),.Cin(1'b1),.C(C),.carry_out(overflow));


endmodule