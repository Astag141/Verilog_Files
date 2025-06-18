module tb_jk_flipflop;
    reg J, K, clk;
    wire Q, Qbar;

    jk_flipflop_gate uut (.J(J), .K(K), .clk(clk), .Q(Q), .Qbar(Qbar));

    initial begin
        $display("\n=== JK Flip-Flop Test ===");
        $display("Time\tJ K clk | Q Qbar");
        $monitor("%0t\t%b %b %b   | %b %b", $time, J, K, clk, Q, Qbar);

        clk = 0; J = 0; K = 0; #5;
        clk = 1; #5;
        clk = 0; J = 1; K = 0; #5;
        clk = 1; #5;
        clk = 0; J = 0; K = 1; #5;
        clk = 1; #5;
        clk = 0; J = 1; K = 1; #5;
        clk = 1; #5;
        $finish;
    end
endmodule
