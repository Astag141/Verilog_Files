`include "counter.v"

module counter_tb();
    reg clk,rst;
    wire [3:0]count;

    counter rtl(
            .clk(clk),
            .rst(rst),
            .count(count)
                );
    always # clk=~clk;
    initial begin
    clk=0;
    rst=0; #20;
    rst=1;
    end
    initial begin
    repeat(20)
    count=$random;
#10;
    end

endmodule
