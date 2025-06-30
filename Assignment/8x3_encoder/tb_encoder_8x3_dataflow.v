// tb_encoder_8x3_dataflow.v
module tb_encoder_8x3_dataflow;

    reg [7:0] in;
    wire [2:0] out;

    // Instantiate DUT
    encoder_8x3_dataflow dut (
        .in(in),
        .out(out)
    );

    initial begin
        $display("Time\t\tInput\t\tOutput");
        $monitor("%0t\t%b\t%b", $time, in, out);

        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;

        // Multiple bits high
        in = 8'b11000001; #10; // expect 111
        in = 8'b00110000; #10; // expect 101
        in = 8'b00000000; #10; // expect 000 (default)

        $finish;
    end

endmodule