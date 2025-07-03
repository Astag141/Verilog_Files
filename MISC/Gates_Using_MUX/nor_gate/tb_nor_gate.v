module tb_nor_gate;
    reg a, b;
    wire y;
    integer i;
    nor_gate_using_mux uut(.a(a), .b(b), .y(y));

    initial begin
        $display("A B | NOR");
        $display("----------");
        for ( i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1 $display("%b %b |  %b", a, b, y);
        end
#4 $finish;
    end
endmodule