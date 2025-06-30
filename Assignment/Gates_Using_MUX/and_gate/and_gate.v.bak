module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module and_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(a), .b(b), .sel(a), .y(y));
endmodule
