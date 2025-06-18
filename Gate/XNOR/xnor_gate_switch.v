module xnor_gate_switch(input a, b, output y);
    supply1 Vdd;
    supply0 Gnd;

    wire na, nb, t1, t2, xor_out;

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
    wire temp1_nand;
    wire n1;
    nmos (n1, Gnd, na);
    nmos (temp1_nand, n1, b);
    pmos (temp1_nand, Vdd, na);
    pmos (temp1_nand, Vdd, b);
    // NOT(temp1_nand) -> t1
    pmos (t1, Vdd, temp1_nand);
    nmos (t1, Gnd, temp1_nand);

    // AND(a, nb) -> t2
    wire temp2_nand;
    wire n2;
    nmos (n2, Gnd, a);
    nmos (temp2_nand, n2, nb);
    pmos (temp2_nand, Vdd, a);
    pmos (temp2_nand, Vdd, nb);
    // NOT(temp2_nand) -> t2
    pmos (t2, Vdd, temp2_nand);
    nmos (t2, Gnd, temp2_nand);

    // OR(t1, t2) = XOR(a,b)
    wire nor_out;
    wire p1;
    nmos (nor_out, Gnd, t1);
    nmos (nor_out, Gnd, t2);
    pmos (p1, Vdd, t1);
    pmos (nor_out, p1, t2);

    // NOT(nor_out) = XNOR(a,b)
    pmos (y, Vdd, nor_out);
    nmos (y, Gnd, nor_out);
endmodule
