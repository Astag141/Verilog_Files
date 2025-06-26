module tb_demux1x4;
  reg din;
  reg [1:0] sel;
  wire [3:0] y;

  demux1x4 uut (.din(din), .sel(sel), .y(y));

  initial begin
    $display("DIN SEL | Y3 Y2 Y1 Y0");
    din = 1;
    for (sel = 0; sel < 4; sel = sel + 1) begin
      #10 $display(" %b   %b  |  %b  %b  %b  %b", din, sel, y[3], y[2], y[1], y[0]);
    end
  end
endmodule

