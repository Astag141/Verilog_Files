module tb_encoder2x1;
  reg [1:0] in;
  wire y;

  encoder2x1 uut (.in(in), .y(y));

  initial begin
    $display("IN  | Y");
    in = 2'b01; #10 $display("%b | %b", in, y);
    in = 2'b10; #10 $display("%b | %b", in, y);
  end
endmodule

