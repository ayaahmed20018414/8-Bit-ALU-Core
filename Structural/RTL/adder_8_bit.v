module adder_8_bit #(parameter WIDTH=8)(input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input Cin,
output [WIDTH-1:0] C,
output carry_out);
wire C1,C2,C3,C4,C5,C6,C7;
full_adder U0 (.A(A[0]),.B(B[0]),.Cin(Cin),.C(C[0]),.carry_out(C1));
full_adder U1 (.A(A[1]),.B(B[1]),.Cin(C1),.C(C[1]),.carry_out(C2));
full_adder U2 (.A(A[2]),.B(B[2]),.Cin(C2),.C(C[2]),.carry_out(C3));
full_adder U3 (.A(A[3]),.B(B[3]),.Cin(C3),.C(C[3]),.carry_out(C4));
full_adder U4 (.A(A[4]),.B(B[4]),.Cin(C4),.C(C[4]),.carry_out(C5));
full_adder U5 (.A(A[5]),.B(B[5]),.Cin(C5),.C(C[5]),.carry_out(C6));
full_adder U6 (.A(A[6]),.B(B[6]),.Cin(C6),.C(C[6]),.carry_out(C7));
full_adder U7 (.A(A[7]),.B(B[7]),.Cin(C7),.C(C[7]),.carry_out(carry_out));

endmodule
