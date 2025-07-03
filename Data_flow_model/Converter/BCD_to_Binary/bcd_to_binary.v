module bcd_to_binary(input [3:0] bcd, output [3:0] bin);
  assign bin = bcd;  // Valid for BCD values 0–9
endmodule

