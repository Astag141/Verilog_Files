`include "adder.v"

module adder_tb();
    reg a,b,cin;
    wire x,y;

    integer file1,file2;
    reg [2:0] mem [7:0];
    integer i;

    adder #(1) RTL(
            .a(a),
            .b(b),
           // .bin(bin),
            .cin(cin),
            .x(x),
            .y(y)
                    );
    initial begin
    file1=$fopen("input.txt");
    file2=$fopen("output.txt");

    $readmemb("amrit.txt",mem);
    i=0;
    repeat(10)begin
    {a,b,cin}=mem[i];
    #10;
    $fdisplay(file1,"a=%b b=%b cin=%b",a,b,cin);
    $fdisplay(file2,"x=%b y=%b",x,y);
    i=i+1;
    end
    $fclose(file1);
    $fclose(file2);
    end
endmodule
