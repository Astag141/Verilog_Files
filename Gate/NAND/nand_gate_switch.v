module nand_gate_switch(input a, b, output y);
    supply1 Vdd;
    supply0 Gnd;

    wire n1;

    nmos (n1, Gnd, a);
    nmos (y, n1, b);

    pmos (y, Vdd, a);
    pmos (y, Vdd, b);
endmodule