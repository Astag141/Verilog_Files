
module tb_sipo;
    reg clk, reset, serial_in;
    wire [3:0] parallel_out;

    sipo uut (.clk(clk), .reset(reset), .serial_in(serial_in), .parallel_out(parallel_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; serial_in = 0; #10;
        reset = 0;

        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        $finish;
    end
endmodule
