module tb_encoder8x3;
    reg [7:0] d;
    wire a, b, c;
    encoder8x3 uut (.d(d), .a(a), .b(b), .c(c));
    initial begin
        d = 8'b00000001; #10;
        d = 8'b00000010; #10;
        d = 8'b00000100; #10;
        d = 8'b00001000; #10;
        d = 8'b00010000; #10;
        d = 8'b00100000; #10;
        d = 8'b01000000; #10;
        d = 8'b10000000; #10;
        $finish;
    end
endmodule
