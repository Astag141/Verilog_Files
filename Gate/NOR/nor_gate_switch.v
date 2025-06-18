module nor_gate_switch(input a, b, output y);
    supply1 Vdd;
    supply0 Gnd;

    wire p1;

    nmos (y, Gnd, a);
    nmos (y, Gnd, b);

    pmos (p1, Vdd, a);
    pmos (y, p1, b);
endmodule