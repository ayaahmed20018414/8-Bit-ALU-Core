module SHIFTER_UNIT_AR #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input S3,
output reg [WIDTH-1:0] C
);
always @(*)
 begin
	C[0]=A[1] & S3;
	C[1]=(A[2] & S3)|(A[0] & ~S3);
	C[2]=(A[3] & S3)|(A[1] & ~S3);
	C[3]=(A[4] & S3)|(A[2] & ~S3);
	C[4]=(A[5] & S3)|(A[3] & ~S3);
	C[5]=(A[6] & S3)|(A[4] & ~S3);
	C[6]=(A[7] & S3)|(A[5] & ~S3);
	C[7]=A[6] & ~S3;
 end
endmodule