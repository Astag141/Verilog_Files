module rca_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire c4;

rca uut(a,b,cin,sum,c4);

initial begin
cin = 0;
a = 4'b0110;
b = 4'b1100;
#10
a = 4'b1110;
b = 4'b1000;
#10
a = 4'b0111;
b = 4'b1110;
#10
a = 4'b0010;
b = 4'b1001;
#10
a = 4'b1101; 
b = 4'b0010; 
#10
$finish();
end
  initial $monitor("a=%b b=%b cin=%b sum=%b c4=%b",a,b,cin,sum,c4);              
endmodule
