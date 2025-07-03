module tb_encoder8x3;
  reg [7:0] in;
  wire [2:0] out;

  encoder8x3 uut (.in(in), .out(out));

  initial begin
    $display("IN       | OUT");
    in = 8'b00000001; #10 $display("%b | %b", in, out);
    in = 8'b00000010; #10 $display("%b | %b", in, out);
    in = 8'b00000100; #10 $display("%b | %b", in, out);
    in = 8'b00001000; #10 $display("%b | %b", in, out);
    in = 8'b00010000; #10 $display("%b | %b", in, out);
    in = 8'b00100000; #10 $display("%b | %b", in, out);
    in = 8'b01000000; #10 $display("%b | %b", in, out);
    in = 8'b10000000; #10 $display("%b | %b", in, out);
  end
endmodule

