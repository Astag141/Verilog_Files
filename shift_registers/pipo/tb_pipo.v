
module tb_pipo;
    reg clk, reset;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;

    pipo uut (.clk(clk), .reset(reset), .parallel_in(parallel_in), .parallel_out(parallel_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; parallel_in = 4'b0000; #10;
        reset = 0;

        parallel_in = 4'b1010; #10;
        parallel_in = 4'b0101; #10;
        parallel_in = 4'b1111; #10;

        $finish;
    end
endmodule
