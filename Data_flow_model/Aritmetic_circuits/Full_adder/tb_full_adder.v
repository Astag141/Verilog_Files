module tb_full_adder;
  reg a, b, cin;
  wire sum, carry;

  full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

  initial begin
    $display("A B Cin | SUM CARRY");
    {a, b, cin} = 3'b000; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b001; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b010; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b011; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b100; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b101; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b110; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    {a, b, cin} = 3'b111; #10 $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
  end
endmodule

