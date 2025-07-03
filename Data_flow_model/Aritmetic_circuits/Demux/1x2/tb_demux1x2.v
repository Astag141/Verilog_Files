module tb_demux1x2;
  reg din, sel;
  wire [1:0] y;

  demux1x2 uut (.din(din), .sel(sel), .y(y));

  initial begin
    $display("DIN SEL | Y1 Y0");
    din = 1;
    sel = 0; #10 $display(" %b   %b  |  %b  %b", din, sel, y[1], y[0]);
    sel = 1; #10 $display(" %b   %b  |  %b  %b", din, sel, y[1], y[0]);
  end
endmodule

