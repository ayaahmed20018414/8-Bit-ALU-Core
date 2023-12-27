module REGISTER #(parameter WIDTH=8)(input [WIDTH-1:0] DATA,
input CLK,
input RST,
output [WIDTH-1:0] REG_DATA);
FF_design U0(.D(DATA[0]),.CLK(CLK),.RST(RST),.Q(REG_DATA[0]));
FF_design U1(.D(DATA[1]),.CLK(CLK),.RST(RST),.Q(REG_DATA[1]));
FF_design U2(.D(DATA[2]),.CLK(CLK),.RST(RST),.Q(REG_DATA[2]));
FF_design U3(.D(DATA[3]),.CLK(CLK),.RST(RST),.Q(REG_DATA[3]));
FF_design U4(.D(DATA[4]),.CLK(CLK),.RST(RST),.Q(REG_DATA[4]));
FF_design U5(.D(DATA[5]),.CLK(CLK),.RST(RST),.Q(REG_DATA[5]));
FF_design U6(.D(DATA[6]),.CLK(CLK),.RST(RST),.Q(REG_DATA[6]));
FF_design U7(.D(DATA[7]),.CLK(CLK),.RST(RST),.Q(REG_DATA[7]));
endmodule