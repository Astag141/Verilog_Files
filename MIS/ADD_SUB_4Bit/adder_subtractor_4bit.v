module adder_subtractor_4bit(
    input [3:0] a, b,
    input mode,            // mode = 0: addition, mode = 1: subtraction
    output [3:0] result,
    output cout
);
    wire [3:0] b_xor;
    wire [2:0] c; // internal carry

    // XOR each bit of b with mode to get b'
    xor(b_xor[0], b[0], mode);
    xor(b_xor[1], b[1], mode);
    xor(b_xor[2], b[2], mode);
    xor(b_xor[3], b[3], mode);

    full_adder fa0 (a[0], b_xor[0], mode,  result[0], c[0]);
    full_adder fa1 (a[1], b_xor[1], c[0],  result[1], c[1]);
    full_adder fa2 (a[2], b_xor[2], c[1],  result[2], c[2]);
    full_adder fa3 (a[3], b_xor[3], c[2],  result[3], cout);

endmodule
