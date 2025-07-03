module not_gate_switch(input a, output y);
    supply1 Vdd;
    supply0 Gnd;

    // Inverter logic: y = NOT a
    pmos (y, Vdd, a);  // Pull-up when a = 0
    nmos (y, Gnd, a);  // Pull-down when a = 1
endmodule