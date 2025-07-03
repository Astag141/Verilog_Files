module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module not_gate_using_mux(input a, output y);
    mux2to1 m1(.a(1'b1), .b(1'b0), .sel(a), .y(y));
endmodule