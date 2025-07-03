module tb_jk_flip_flop;

    reg clk;
    reg j, k, rst;
    wire q, q_bar;

    jk_flip_flop uut (
        .clk(clk),
        .j(j),
        .k(k),
        .rst(rst),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time\tJ K RST | Q Q'");
        $monitor("%g\t%b %b %b   | %b %b", $time, j, k, rst, q, q_bar);

        j = 0; k = 0; rst = 1; #10;
        rst = 0;

        j = 0; k = 0; #10; 
        j = 0; k = 1; #10; 
        j = 1; k = 0; #10; 
        j = 1; k = 1; #10; 
        j = 0; k = 0; #10; 
        j = 1; k = 1; #10; 
        j = 0; k = 1; #10; 
        j = 1; k = 0; #10; 

        $finish;
    end

endmodule
