`include "encoder.v"

module encoder_tb;
    reg [7:0] i;
    wire [2:0] y;

    integer x;

    encoder dut(
        .i(i),
        .y(y)
    );

    initial begin
        for(x = 0; x < 8; x = x + 1) begin
            i = 1 << x; 
            #10;
        end
    end

    initial begin
        $monitor("Time = %0t | i = %b | y = %b", $time, i, y);
    end
endmodule
