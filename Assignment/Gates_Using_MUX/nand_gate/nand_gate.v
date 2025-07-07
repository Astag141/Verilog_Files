module mux2to1(input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule

module and_gate_using_mux(input a, input b, output y);
    mux2to1 m1(.a(1'b0), .b(b), .sel(a), .y(y));
endmodule

module not_gate_using_mux(input a, output y);
    mux2to1 m1(.a(1'b1), .b(1'b0), .sel(a), .y(y));
endmodule

module nand_gate_using_mux(input a, input b, output y);
    wire and_out;
    and_gate_using_mux u1(.a(a), .b(b), .y(and_out));
    not_gate_using_mux u2(.a(and_out), .y(y));
endmodule