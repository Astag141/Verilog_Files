module or_gate_switch(input a, b, output y);
    supply1 Vdd;
    supply0 Gnd;

    wire nor_out;

    // NOR gate using PMOS and NMOS
    wire p1;
    nmos (nor_out, Gnd, a);
    nmos (nor_out, Gnd, b);
    pmos (p1, Vdd, a);
    pmos (nor_out, p1, b);

    // Inverter (NOT) to get OR = NOT(NOR)
    pmos (y, Vdd, nor_out);
    nmos (y, Gnd, nor_out);
endmodule
