module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module or_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(b), .b(1'b1), .sel(a), .y(y));
endmodule