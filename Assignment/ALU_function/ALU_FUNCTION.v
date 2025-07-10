module alu(
    input  [7:0] a,
    input  [7:0] b,
    input  [2:0] operation,
    output [15:0] result
);

    assign result =
        (operation == 3'b000) ? add(a, b) :
        (operation == 3'b001) ? sub(a, b) :
        (operation == 3'b010) ? mul(a, b) :
        (operation == 3'b011) ? and_op(a, b) :
        (operation == 3'b100) ? or_op(a, b) :
        (operation == 3'b101) ? xor_op(a, b) :
        (operation == 3'b110) ? lshift(a, b) :
        (operation == 3'b111) ? rshift(a, b) :
        16'b0; // Default case

    function [15:0] add;
        input [7:0] a, b;
        add = a + b;
    endfunction

    function [15:0] sub;
        input [7:0] a, b;
        sub = a - b;
    endfunction

    function [15:0] mul;
        input [7:0] a, b;
        mul = a * b;
    endfunction

    function [15:0] and_op;
        input [7:0] a, b;
        and_op = a & b;
    endfunction

    function [15:0] or_op;
        input [7:0] a, b;
        or_op = a | b;
    endfunction

    function [15:0] xor_op;
        input [7:0] a, b;
        xor_op = a ^ b;
    endfunction

    function [15:0] lshift;
        input [7:0] a, b;
        lshift = a << b;
    endfunction

    function [15:0] rshift;
        input [7:0] a, b;
        rshift = a >> b;
    endfunction

endmodule