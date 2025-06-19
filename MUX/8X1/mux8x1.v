module mux8x1_gate (
    input wire i0, i1, i2, i3, i4, i5, i6, i7,
    input wire s0, s1, s2,
    output wire y
);
    wire [7:0] and_out;
    wire [7:0] select_lines;

    wire ns0, ns1, ns2;
    not (ns0, s0);
    not (ns1, s1);
    not (ns2, s2);

  
    and (and_out[0], i0, ns2, ns1, ns0);
    and (and_out[1], i1, ns2, ns1,  s0);
    and (and_out[2], i2, ns2,  s1, ns0);
    and (and_out[3], i3, ns2,  s1,  s0);
    and (and_out[4], i4,  s2, ns1, ns0);
    and (and_out[5], i5,  s2, ns1,  s0);
    and (and_out[6], i6,  s2,  s1, ns0);
    and (and_out[7], i7,  s2,  s1,  s0);

    
    or (y, and_out[0], and_out[1], and_out[2], and_out[3],
           and_out[4], and_out[5], and_out[6], and_out[7]);
endmodule
