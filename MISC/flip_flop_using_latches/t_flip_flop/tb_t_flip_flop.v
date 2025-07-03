
module tb_t_flip_flop;
    reg t, clk, rst;
    wire q;

    t_flip_flop uut (.t(t), .clk(clk), .rst(rst), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | clk=%b t=%b q=%b", $time, clk, t, q);
        rst = 1; t = 0; #10;
        rst = 0;

        t = 1; #10;
        t = 0; #10;
        t = 1; #10;
        t = 1; #10;
        t = 0; #10;
        $finish;
    end
endmodule
