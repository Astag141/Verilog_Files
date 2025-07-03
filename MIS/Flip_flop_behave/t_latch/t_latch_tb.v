module tb_t_latch;
    reg T, En;
    wire Q;
    reg clk, rst;

    t_latch uut(.T(T), .En(En), .Q(Q));

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin rst = 1; #12 rst = 0; end

    initial begin
        $display("En T | Q");
        En = 1; T = 0; #10;
        T = 1; #10;
        T = 1; #10;
        T = 0; #10;
        En = 0; T = 1; #10;
    end
endmodule