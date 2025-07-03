module tb_encoder4x2;
    reg [3:0] d;
    wire a, b;
    encoder4x2 uut (.d(d), .a(a), .b(b));
    initial begin
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;
        $finish;
    end
endmodule
