module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module or_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(b), .b(1'b1), .sel(a), .y(y));
endmodule

module not_gate_using_mux(input a, output y);
    mux2to1 m1(.a(1'b1), .b(1'b0), .sel(a), .y(y));
endmodule

module nor_gate_using_mux(input a, input b, output y);
    wire or_out;
    or_gate_using_mux u1(.a(a), .b(b), .y(or_out));
    not_gate_using_mux u2(.a(or_out), .y(y));
endmodule