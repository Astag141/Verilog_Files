module add_sub(
    input a_s,
    input [3:0]A,B,
    output [3:0]sum_diff,
    output carry_brrow
);

wire [3:0]Bmod;

assign Bmod = {4{a_s}} ^ B;

rca rac0(A,B,a_s,sum_diff,carry_brrow);

endmodule
