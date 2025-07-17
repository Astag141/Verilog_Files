module tb_mealy_seq_detector;
    reg clk, reset, x;
    wire z;

    mealy_seq_detector uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .z(z)
    );

    reg [15:0] input_pattern = 16'b1101011011010110;
    integer i;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; x = 0;
        #10 reset = 0;

        for (i = 15; i >= 0; i = i - 1) begin
            x = input_pattern[i];
            #10;
        end

        #20 $finish;
    end

    initial begin
        $dumpfile("mealy_seq_detector.vcd");
        $dumpvars(0, tb_mealy_seq_detector);
    end
endmodule