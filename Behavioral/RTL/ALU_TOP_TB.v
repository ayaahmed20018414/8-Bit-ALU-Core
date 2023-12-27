module ALU_TOP_TB#(parameter WIDTH=8)();
reg [WIDTH-1:0] A_TB;
reg [WIDTH-1:0] B_TB;
reg CLK_TB;
reg RST_TB;
reg [3:0] SEL_TB;
wire [WIDTH-1:0] C_TB;
wire zero_flag_TB;
wire over_flow_flag_TB;
wire carry_out_TB;
ALU_TOP#(.WIDTH(WIDTH))U1(.A(A_TB),.B(B_TB),
.CLK(CLK_TB),.RST(RST_TB),.SEL(SEL_TB),
.C(C_TB),.zero_flag(zero_flag_TB),.over_flow_flag(over_flow_flag_TB),
.carry_out(carry_out_TB));

initial 
 begin
	$dumpfile("ALU_TOP_TB.vcd");
	$dumpvars;
	A_TB='d3;
	B_TB='d4;
	CLK_TB=1'b0;
	RST_TB=1'b0;
	SEL_TB='b0000;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d0)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d4;
	RST_TB=1'b1;
	SEL_TB='b0000;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d7)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d25;
	B_TB='d20;
	SEL_TB='b0001;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d5)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d5;
	SEL_TB='b0011;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='b11111011)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d16;
	SEL_TB='b1000;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d0)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d16;
	SEL_TB='b1001;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d19)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d5;
	B_TB='d20;
	SEL_TB='b1010;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d21)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d5;
	B_TB='d20;
	SEL_TB='b1011;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='b11101011)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d40;
	SEL_TB='b1100;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='b1000_0001)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d40;
	SEL_TB='b1101;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d6)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d3;
	B_TB='d40;
	SEL_TB='b1110;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d1)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end	
	A_TB='d3;
	B_TB='d40;
	SEL_TB='b1111;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d6)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	A_TB='d255;
	B_TB='d255;
	SEL_TB='b0000;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d254 || carry_out_TB!=1'b1 || over_flow_flag_TB!=1'b1)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	repeat(5)@(posedge CLK_TB);
	A_TB='d255;
	B_TB='d1;
	SEL_TB='b0000;
	repeat(5)@(posedge CLK_TB);
	if(C_TB !='d0 || zero_flag_TB!=1'b1)
	 begin
		$display("test case failed");
	 end
	else
	 begin
		$display("test case success");
	 end
	repeat(5)@(posedge CLK_TB);			
	$stop;
 end


always #5 CLK_TB=~CLK_TB;





endmodule
