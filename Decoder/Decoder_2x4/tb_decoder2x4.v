module tb_decoder2x4;
    reg a, b;
    wire d0, d1, d2, d3;
    decoder2x4 uut (.a(a), .b(b), .d0(d0), .d1(d1), .d2(d2), .d3(d3));
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
