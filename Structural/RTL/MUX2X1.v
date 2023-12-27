module MUX2X1 #(parameter WIDTH=8)(input [WIDTH-1:0] IN1,
 input [WIDTH-1:0] IN2,
 input S,
output [WIDTH-1:0] OUT);
wire [WIDTH-1:0] S1;
assign S1={8{S}};
assign OUT=(IN1 & ~S1) | (IN2 & S1);


endmodule
