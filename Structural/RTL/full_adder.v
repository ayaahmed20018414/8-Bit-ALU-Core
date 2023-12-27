module full_adder (input A,
input B,
input Cin,
output C,
output carry_out);
assign C=A^B^Cin;
assign carry_out= (A&B)|(A&Cin)|(B&Cin);

endmodule