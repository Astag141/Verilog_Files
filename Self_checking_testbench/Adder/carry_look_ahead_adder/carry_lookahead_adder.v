module carry_lookahead_adder #(parameter N=4) (
    input [N-1:0] a, b,
    input cin,
    output [N-1:0] sum,
    output cout
);
    wire [N-1:0] p, g;
    wire [N:0] carry;
    
    assign carry[0] = cin;
    assign cout = carry[N];
    
    // Generate propagate and generate signals
    assign p = a ^ b;
    assign g = a & b;
    
    // Carry look-ahead logic
    assign carry[1] = g[0] | (p[0] & carry[0]);
    assign carry[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & carry[0]);
    assign carry[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & carry[0]);
    assign carry[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | 
                     (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & carry[0]);
    
    // Sum calculation
    assign sum = p ^ carry[N-1:0];
endmodule
