module tb_t_flipflop;
    reg T, clk;
    wire Q;

    t_flipflop_gate uut (.T(T), .clk(clk), .Q(Q));

    initial begin
        $display("\n=== T Flip-Flop Test ===");
        $display("Time\tT clk | Q");
        $monitor("%0t\t%b %b   | %b", $time, T, clk, Q);

        clk = 0; T = 0; #5;
        clk = 1; #5;
        clk = 0; T = 1; #5;
        clk = 1; #5;
        clk = 0; #5;
        clk = 1; #5;
        $finish;
    end
endmodule
