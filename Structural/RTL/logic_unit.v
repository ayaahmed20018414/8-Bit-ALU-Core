module LOGIC_UNIT #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input S2,
input S3,
output reg [WIDTH-1:0] C
);
always@(*)
 begin
	case({S2,S3})
    	2'b00:begin
		C[0]=A[0]&B[0];
		C[1]=A[1]&B[1];
		C[2]=A[2]&B[2];
		C[3]=A[3]&B[3];
		C[4]=A[4]&B[4];
		C[5]=A[5]&B[5];
		C[6]=A[6]&B[6];
		C[7]=A[7]&B[7];
	      end
    	2'b01:begin
		C[0]=A[0]^B[0];
		C[1]=A[1]^B[1];
		C[2]=A[2]^B[2];
		C[3]=A[3]^B[3];
		C[4]=A[4]^B[4];
		C[5]=A[5]^B[5];
		C[6]=A[6]^B[6];
		C[7]=A[7]^B[7];
	      end
    	2'b10:begin
		C[0]=A[0]|B[0];
		C[1]=A[1]|B[1];
		C[2]=A[2]|B[2];
		C[3]=A[3]|B[3];
		C[4]=A[4]|B[4];
		C[5]=A[5]|B[5];
		C[6]=A[6]|B[6];
		C[7]=A[7]|B[7];
	      end
    	2'b11:begin
		C[0]=~B[0];
		C[1]=~B[1];
		C[2]=~B[2];
		C[3]=~B[3];
		C[4]=~B[4];
		C[5]=~B[5];
		C[6]=~B[6];
		C[7]=~B[7];
	      end
	endcase
	
 end



endmodule
