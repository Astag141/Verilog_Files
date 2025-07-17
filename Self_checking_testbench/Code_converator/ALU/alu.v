module alu #(parameter N=4) (
    input [N-1:0] a, b,
    input [2:0] op,
    output reg [N-1:0] result,
    output zero, carry, overflow
);
    parameter ADD = 3'b000,
              SUB = 3'b001,
              AND = 3'b010,
              OR  = 3'b011,
              XOR = 3'b100,
              NOT = 3'b101,
              LSH = 3'b110,
              RSH = 3'b111;
    
    wire [N:0] add_result = a + b;
    wire [N:0] sub_result = a - b;
    
    always @(*) begin
        case(op)
            ADD: result = add_result[N-1:0];
            SUB: result = sub_result[N-1:0];
            AND: result = a & b;
            OR:  result = a | b;
            XOR: result = a ^ b;
            NOT: result = ~a;
            LSH: result = a << 1;
            RSH: result = a >> 1;
            default: result = 0;
        endcase
    end
    
    assign zero = (result == 0);
    assign carry = (op == ADD) ? add_result[N] : 
                  (op == SUB) ? sub_result[N] : 0;
    assign overflow = (op == ADD) ? (a[N-1] == b[N-1] && result[N-1] != a[N-1]) :
                     (op == SUB) ? (a[N-1] != b[N-1] && result[N-1] != a[N-1]) : 0;
endmodule