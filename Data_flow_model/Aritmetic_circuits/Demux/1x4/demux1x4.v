module demux1x4(input din, input [1:0] sel, output [3:0] y);
  assign y = (sel == 2'b00) ? 4'b0001 :
             (sel == 2'b01) ? 4'b0010 :
             (sel == 2'b10) ? 4'b0100 :
             (sel == 2'b11) ? 4'b1000 : 4'b0000;
  assign y = din ? y : 4'b0000;
endmodule

