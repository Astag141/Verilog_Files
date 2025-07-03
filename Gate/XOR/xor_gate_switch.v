module xor_gate_switch(input a, b, output y);
    supply1 Vdd;
    supply0 Gnd;

    wire na, nb, t1, t2;

    // NOT a
    wire temp_na;
    pmos (temp_na, Vdd, a);
    nmos (temp_na, Gnd, a);
    assign na = temp_na;

    // NOT b
    wire temp_nb;
    pmos (temp_nb, Vdd, b);
    nmos (temp_nb, Gnd, b);
    assign nb = temp_nb;

    // AND(na, b) -> t1
    wire nand1_out, n1;
    nmos (n1, Gnd, na);
    nmos (nand1_out, n1, b);
    pmos (nand1_out, Vdd, na);
    pmos (nand1_out, Vdd, b);
    // NOT(nand1_out) -> t1
    pmos (t1, Vdd, nand1_out);
    nmos (t1, Gnd, nand1_out);

    // AND(a, nb) -> t2
    wire nand2_out, n2;
    nmos (n2, Gnd, a);
    nmos (nand2_out, n2, nb);
    pmos (nand2_out, Vdd, a);
    pmos (nand2_out, Vdd, nb);
    // NOT(nand2_out) -> t2
    pmos (t2, Vdd, nand2_out);
    nmos (t2, Gnd, nand2_out);

    // OR(t1, t2) -> y
    wire nor_out, p1;
    nmos (nor_out, Gnd, t1);
    nmos (nor_out, Gnd, t2);
    pmos (p1, Vdd, t1);
    pmos (nor_out, p1, t2);

    // NOT(nor_out) -> y (final XOR output)
    pmos (y, Vdd, nor_out);
    nmos (y, Gnd, nor_out);
endmodule
