module ALU_TOP#(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input CLK,
input RST,
input [3:0]SEL,
output [WIDTH-1:0] C,
output zero_flag,
output over_flow_flag,
output carry_out
);
wire [WIDTH-1:0] wire1,wire2,wire3,wire4;
ARITHMETIC_UNIT #(.WIDTH(WIDTH))AR1(.A(A),.B(B),.S2(SEL[1]),.S3(SEL[0]),.C(wire1),.zero_flag(zero_flag),
.over_flow_flag(over_flow_flag),.carry_out(carry_out));

LOGIC_UNIT #(.WIDTH(WIDTH))LOU1(.A(A),.B(B),.S2(SEL[1]),.S3(SEL[0]),.C(wire2));

SHIFTER_UNIT #(.WIDTH(WIDTH))SH1(.A(A),.B(B),.S2(SEL[1]),.S3(SEL[0]),.C(wire3));

Control_unit #(.WIDTH(WIDTH))CU1(.IN1(wire1),.IN2(wire2),.IN3(wire3),.S(SEL[3:2]),.OUT(wire4));

 REGISTER #(.WIDTH(WIDTH))RG1(.DATA(wire4),.CLK(CLK),.RST(RST),.REG_DATA(C));
endmodule
