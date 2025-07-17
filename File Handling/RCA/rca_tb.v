`include "rca.v"

module rca_tb();
    reg [63:0]a,b;
    reg cin;
    wire [63:0]sum;
    wire cout;

    integer file1;

    rca DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
            );

    initial begin
    file1=$fopen("IO.txt");
    repeat(10)
    begin
    a=$urandom_range(0,100); b=$urandom_range(0,100); cin=$random;
    #10;
    $fdisplay(file1,"a=[%0d] b=[%0d] c=[%0d] sum=[%0d] carry=[%0d]",a,b,cin,sum,cout);
  //  $display("a=[%0d] b=[%0d] c=[%0d] sum=[%0d] carry=[%0d]",a,b,cin,sum,cout);
    end
    $fclose(file1);
    end
endmodule
