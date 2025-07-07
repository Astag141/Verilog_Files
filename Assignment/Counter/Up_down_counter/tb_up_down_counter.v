module tb_up_down_counter;
    reg clk = 0;
    reg reset;
    reg up_down;
    wire [3:0] count;

    up_down_counter uut (.clk(clk), .reset(reset), .up_down(up_down), .count(count));

    always #5 clk = ~clk;

    initial begin
        reset = 1; up_down = 1;
        #10 reset = 0;
        #50 up_down = 0;
        #50 $finish;
    end
endmodule