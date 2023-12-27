module MUX2X1 #(parameter WIDTH=8)(input [WIDTH-1:0] IN1,
 input [WIDTH-1:0] IN2,
 input S,
output [WIDTH-1:0] OUT);

assign OUT=(S) ? IN2:IN1;


endmodule
