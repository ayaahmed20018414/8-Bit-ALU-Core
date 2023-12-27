module REGISTER #(parameter WIDTH=8)(input [WIDTH-1:0] DATA,
input CLK,
input RST,
output reg [WIDTH-1:0] REG_DATA);

always@(posedge CLK or negedge RST)
 begin
	if(!RST)
	 begin
		REG_DATA<='b0;
	 end
	else
	 begin
		REG_DATA<=DATA;
	 end

 end
endmodule
