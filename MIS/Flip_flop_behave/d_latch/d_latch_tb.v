module tb_d_latch;
    reg D, En;
    wire Q;
    reg clk, rst;

    d_latch uut(.D(D), .En(En), .Q(Q));

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin rst = 1; #12 rst = 0; end

    initial begin
        $display("En D | Q");
        En = 0; D = 0; #10;
        En = 1; D = 1; #10;
        En = 1; D = 0; #10;
        En = 0; D = 1; #10;
    end
endmodule