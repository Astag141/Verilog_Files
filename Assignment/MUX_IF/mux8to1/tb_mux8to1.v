module tb_mux8to1;
  reg [7:0] in;
  reg [2:0] sel;
  wire y;

  mux8to1 dut (.in(in), .sel(sel), .y(y));

  initial begin
    $display("Time\tsel\tin\t\t\t\ty");
    $monitor("%0t\t%b\t%8b\t%b", $time, sel, in, y);

    in = 8'b11010101;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
  end
endmodule
