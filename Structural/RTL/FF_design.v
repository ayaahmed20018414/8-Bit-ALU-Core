module FF_design(input D,
input CLK,
input RST,
output reg Q);

always@(posedge CLK or negedge RST)
 begin
	Q <=(~RST & 1'b0)|(RST & D);
 end
endmodule
