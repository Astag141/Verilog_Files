module full_subtractor(input a, b, bin, output diff, bout);
  assign diff = a ^ b ^ bin;
  assign bout = (~a & bin) | (~a & b) | (b & bin);
endmodule

