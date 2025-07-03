module tb_sr_latch;
    reg S, R;
    wire Q, Qn;
    reg clk, rst;

    sr_latch uut(.S(S), .R(R), .Q(Q), .Qn(Qn));

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin rst = 1; #12 rst = 0; end

    initial begin
        $display("S R | Q Qn");
        S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        S = 1; R = 1; #10;
    end
endmodule