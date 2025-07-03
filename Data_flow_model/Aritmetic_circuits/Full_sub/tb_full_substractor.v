module tb_full_subtractor;
  reg a, b, bin;
  wire diff, bout;

  full_subtractor uut (.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));

  initial begin
    $display("A B Bin | DIFF BOUT");
    {a, b, bin} = 3'b000; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b001; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b010; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b011; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b100; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b101; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b110; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    {a, b, bin} = 3'b111; #10 $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
  end
endmodule

