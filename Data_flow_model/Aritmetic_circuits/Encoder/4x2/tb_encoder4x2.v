module tb_encoder4x2;
  reg [3:0] in;
  wire [1:0] out;

  encoder4x2 uut (.in(in), .out(out));

  initial begin
    $display("IN   | OUT");
    in = 4'b0001; #10 $display("%b | %b", in, out);
    in = 4'b0010; #10 $display("%b | %b", in, out);
    in = 4'b0100; #10 $display("%b | %b", in, out);
    in = 4'b1000; #10 $display("%b | %b", in, out);
  end
endmodule

