module tb_decoder2x4;
  reg [1:0] in;
  wire [3:0] out;

  decoder2x4 uut (.in(in), .out(out));

  initial begin
    $display("IN | OUT");
    for (in = 0; in < 4; in = in + 1) begin
      #10 $display("%b | %b", in, out);
    end
  end
endmodule

