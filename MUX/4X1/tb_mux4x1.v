module tb_mux4x1;
    reg a, b, c, d;
    reg [1:0] sel;
    wire y;
    mux4x1 uut (.a(a), .b(b), .c(c), .d(d), .sel(sel), .y(y));
    initial begin
        $monitor("a=%b b=%b c=%b d=%b sel=%b y=%b", a, b, c, d, sel, y);
        a=0; b=1; c=0; d=1;
        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
        $finish;
    end
endmodule
