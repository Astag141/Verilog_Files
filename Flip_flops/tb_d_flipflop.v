module tb_d_flipflop;
    reg D, clk;
    wire Q, Qbar;

    d_flipflop_gate uut (.D(D), .clk(clk), .Q(Q), .Qbar(Qbar));

    initial begin
        $display("\n=== D Flip-Flop Test ===");
        $display("Time\tD clk | Q Qbar");
        $monitor("%0t\t%b %b   | %b %b", $time, D, clk, Q, Qbar);

        clk = 0; D = 0; #5;
        clk = 1; #5;
        clk = 0; D = 1; #5;
        clk = 1; #5;
        clk = 0; D = 0; #5;
        clk = 1; #5;
        $finish;
    end
endmodule
