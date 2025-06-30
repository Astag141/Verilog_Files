module tb_mux16to1;
  reg [15:0] in;
  reg [3:0] sel;
  wire y;

  mux16to1 dut (.in(in), .sel(sel), .y(y));

  integer i;

  initial begin
    $display("Time\tsel\tin\t\t\t\t\t\t\ty");
    $monitor("%0t\t%b\t%016b\t%b", $time, sel, in, y);

    in = 16'b1010110011110001;

    for (i = 0; i < 16; i = i + 1) begin
      sel = i[3:0];
      #10;
    end

    $finish;
  end
endmodule
