module tb_up_counter;

    reg clk = 0;
    reg reset;
    wire [3:0] count;

    up_counter uut (.clk(clk), .reset(reset), .count(count));

    always #5 clk = ~clk;

    initial begin
        reset = 1;
        #10 reset = 0;
        #100 $finish;
    end
endmodule
