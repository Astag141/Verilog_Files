
module tb_piso;
    reg clk, reset, load;
    reg [3:0] parallel_in;
    wire serial_out;

    piso uut (.clk(clk), .reset(reset), .parallel_in(parallel_in), .load(load), .serial_out(serial_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; load = 0; parallel_in = 4'b0000; #10;
        reset = 0;

        parallel_in = 4'b1101; load = 1; #10;
        load = 0; #40;

        $finish;
    end
endmodule
