module nand_gate_tb;
    reg a, b;
    wire y;

    nand_gate_switch uut(.a(a), .b(b), .y(y));

    initial begin
       // $display("A B | Y");
        a = 0; b = 0; #10 $display("%b %b | %b", a, b, y);
        a = 0; b = 1; #10 $display("%b %b | %b", a, b, y);
        a = 1; b = 0; #10 $display("%b %b | %b", a, b, y);
        a = 1; b = 1; #10 $display("%b %b | %b", a, b, y);
    end
endmodule