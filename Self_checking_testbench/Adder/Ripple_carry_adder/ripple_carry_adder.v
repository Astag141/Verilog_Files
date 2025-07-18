module ripple_carry_adder #(parameter N=4) (
    input [N-1:0] a, b,
    input cin,
    output [N-1:0] sum,
    output cout
);
    wire [N:0] carry;
    assign carry[0] = cin;
    assign cout = carry[N];
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin: rca
            full_adder fa(
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate
endmodule
