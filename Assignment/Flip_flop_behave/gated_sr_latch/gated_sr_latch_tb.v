module tb_gated_sr_latch;
    reg S, R, En;
    wire Q, Qn;
    reg clk, rst;

    gated_sr_latch uut(.S(S), .R(R), .En(En), .Q(Q), .Qn(Qn));

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin rst = 1; #12 rst = 0; end

    initial begin
        $display("En S R | Q Qn");
        En = 1; S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        En = 0; S = 1; R = 1; #10;
    end
endmodule