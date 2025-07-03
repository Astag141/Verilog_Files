
module tb_jk_flip_flop;
    reg j, k, clk, rst;
    wire q;

    jk_flip_flop uut (.j(j), .k(k), .clk(clk), .rst(rst), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | clk=%b j=%b k=%b q=%b", $time, clk, j, k, q);
        rst = 1; j = 0; k = 0; #10;
        rst = 0;

        j = 1; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 1; #10;
        j = 0; k = 0; #10;
        $finish;
    end
endmodule
