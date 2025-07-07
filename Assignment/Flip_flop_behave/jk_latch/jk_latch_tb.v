module tb_jk_latch;
    reg J, K, En;
    wire Q;
    reg clk, rst;

    jk_latch uut(.J(J), .K(K), .En(En), .Q(Q));

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin rst = 1; #12 rst = 0; end

    initial begin
        $display("En J K | Q");
        En = 1; J = 0; K = 0; #10;
        J = 1; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 1; #10;
        En = 0; J = 0; K = 0; #10;
    end
endmodule