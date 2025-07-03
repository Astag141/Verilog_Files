
module tb_sr_flip_flop;
    reg s, r, clk, rst;
    wire q;

    sr_flip_flop uut (.s(s), .r(r), .clk(clk), .rst(rst), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | clk=%b s=%b r=%b q=%b", $time, clk, s, r, q);
        rst = 1; s = 0; r = 0; #10;
        rst = 0;

        s = 1; r = 0; #10;
        s = 0; r = 1; #10;
        s = 0; r = 0; #10;
        s = 1; r = 1; #10;
        $finish;
    end
endmodule
