module tb_mux4to1;
  reg [3:0] in;
  reg [1:0] sel;
  wire y;

  mux4to1 dut (.in(in), .sel(sel), .y(y));

  initial begin
    $display("Time\tsel\tin\t\ty");
    $monitor("%0t\t%b\t%4b\t%b", $time, sel, in, y);

    in = 4'b1010;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
  end
endmodule
