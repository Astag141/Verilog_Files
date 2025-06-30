module tb_and_gate;
    reg a, b;
    wire y;
integer i;
    and_gate_using_mux uut (.a(a), .b(b), .y(y));

    initial begin
        $display("A B | AND");
        for ( i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1 $display("%b %b |  %b", a, b, y);
        end
        $finish;
    end
endmodule