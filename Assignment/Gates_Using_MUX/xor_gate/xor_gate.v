module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module not_gate_using_mux(input a, output y);
    mux2to1 m1(.a(1'b1), .b(1'b0), .sel(a), .y(y));
endmodule

module and_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(1'b0), .b(b), .sel(a), .y(y));
endmodule

module or_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(b), .b(1'b1), .sel(a), .y(y));
endmodule

module xor_gate_using_mux(input a, input b, output y);
    wire nota, notb, w1, w2;
    not_gate_using_mux n1(.a(a), .y(nota));
    not_gate_using_mux n2(.a(b), .y(notb));
    and_gate_using_mux and1(.a(nota), .b(b), .y(w1));
    and_gate_using_mux and2(.a(a), .b(notb), .y(w2));
    or_gate_using_mux or1(.a(w1), .b(w2), .y(y));
endmodule