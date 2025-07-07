
module tb_d_flip_flop;
    reg d, clk, rst;
    wire q;

    d_flip_flop uut (.d(d), .clk(clk), .rst(rst), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | clk=%b d=%b q=%b", $time, clk, d, q);
        rst = 1; d = 0; #10;
        rst = 0;

        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 1; #10;
        d = 0; #10;
        $finish;
    end
endmodule
