
module tb_siso;
    reg clk, reset, serial_in;
    wire serial_out;

    siso uut (.clk(clk), .reset(reset), .serial_in(serial_in), .serial_out(serial_out));

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
        serial_in = 0; #10;

        $finish;
    end
endmodule
