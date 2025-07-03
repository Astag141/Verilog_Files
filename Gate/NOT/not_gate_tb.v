module not_gate_tb;
    reg a;
    wire y;

    // Instantiate the NOT gate
    not_gate_switch uut (.a(a), .y(y));

    initial begin
        //$display("A | Y");
        //$display("------");
        a = 0; #10 $display("%b | %b", a, y);
        a = 1; #10 $display("%b | %b", a, y);
        $finish;
    end
endmodule