module add_sub_tb;

reg a_s;
reg [3:0]A,B;
wire [3:0]sum_diff;
wire carry_borrow;

add_sub uut(a_s,A,B,sum_diff,carry_borrow);

initial begin 
A = 5; B = 3;
a_s = 0; //Additin
#20
a_s = 1; //Subtraction
#20
$finish();
end

endmodule
