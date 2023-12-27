module Control_unit #(parameter WIDTH=8)(input [WIDTH-1:0] IN1,
 input [WIDTH-1:0] IN2,
 input [WIDTH-1:0] IN3,
 input [1:0] S,
output [WIDTH-1:0] OUT);
wire [WIDTH-1:0] wire1;
MUX2X1 #(.WIDTH(WIDTH))U1(.IN1(IN2),.IN2(IN3),.S(S[0]),.OUT(wire1));
MUX2X1 #(.WIDTH(WIDTH))U2(.IN1(IN1),.IN2(wire1),.S(S[1]),.OUT(OUT));



endmodule
