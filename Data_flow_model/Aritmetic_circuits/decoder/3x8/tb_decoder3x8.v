module tb_decoder3x8;
  reg [2:0] in;
  wire [7:0] out;

  decoder3x8 uut (.in(in), .out(out));

  initial begin
    $display("IN  | OUT");
    for (in = 0; in < 8; in = in + 1) begin
      #10 $display("%b | %b", in, out);
    end
  end
endmodule

