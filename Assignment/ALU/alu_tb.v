module alu_tb;

reg [3:0] a, b;
reg [2:0] sel;
wire [3:0] result;
wire carry_out;

alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result),
    .carry_out(carry_out)
);

initial begin
    $display("A   B   SEL | RESULT CARRY");
    $monitor("%b %b  %b   |   %b     %b", a, b, sel, result, carry_out);

    a = 4'b0011; b = 4'b0101;

    sel = 3'b000; #10; // AND
    sel = 3'b001; #10; // OR
    sel = 3'b010; #10; // ADD
    sel = 3'b011; #10; // SUB
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NAND
    sel = 3'b110; #10; // NOR
    sel = 3'b111; #10; // XNOR

    $finish;
end

endmodule
