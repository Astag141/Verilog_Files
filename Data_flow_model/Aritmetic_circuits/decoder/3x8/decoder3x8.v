module decoder3x8(input [2:0] in, output [7:0] out);
  assign out = (in == 3'd0) ? 8'b00000001 :
               (in == 3'd1) ? 8'b00000010 :
               (in == 3'd2) ? 8'b00000100 :
               (in == 3'd3) ? 8'b00001000 :
               (in == 3'd4) ? 8'b00010000 :
               (in == 3'd5) ? 8'b00100000 :
               (in == 3'd6) ? 8'b01000000 : 8'b10000000;
endmodule

