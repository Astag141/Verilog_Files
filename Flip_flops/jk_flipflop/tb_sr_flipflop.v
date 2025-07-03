module tb_sr_flipflop;
    reg S, R, clk;
    wire Q, Qbar;

    sr_flipflop_gate uut (.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));

    initial begin
        $display("\n=== SR Flip-Flop Test ===");
        $display("Time\tS R clk | Q Qbar");
        $monitor("%0t\t%b %b %b   | %b %b", $time, S, R, clk, Q, Qbar);

        clk = 0; S = 0; R = 0; #5;
        clk = 1; S = 1; R = 0; #5;
        clk = 0; #5;
        clk = 1; S = 0; R = 1; #5;
        clk = 0; #5;
        clk = 1; S = 1; R = 1; #5; // Invalid
        $finish;
    end
endmodule
