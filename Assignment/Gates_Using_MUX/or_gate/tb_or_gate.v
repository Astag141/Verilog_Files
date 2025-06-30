module tb_or_gate;
    reg a, b;
    wire y;

    or_gate_using_mux uut(.a(a), .b(b), .y(y));

    initial begin
        $display("A B | OR");
        $display("--------");
        for (integer i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1 $display("%b %b |  %b", a, b, y);
        end
    end
endmodule