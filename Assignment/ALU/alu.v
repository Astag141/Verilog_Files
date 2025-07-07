module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [3:0] result,
    output reg carry_out
);

always @(*) begin
    case (sel)
        3'b000: {carry_out, result} = {1'b0, a & b};            // AND
        3'b001: {carry_out, result} = {1'b0, a | b};            // OR
        3'b010: {carry_out, result} = a + b;                    // ADD
        3'b011: {carry_out, result} = a - b;                    // SUB
        3'b100: {carry_out, result} = {1'b0, a ^ b};            // XOR
        3'b101: {carry_out, result} = {1'b0, ~(a & b)};         // NAND
        3'b110: {carry_out, result} = {1'b0, ~(a | b)};         // NOR
        3'b111: {carry_out, result} = {1'b0, ~(a ^ b)};         // XNOR
        default: {carry_out, result} = 5'b00000;
    endcase
end

endmodule
