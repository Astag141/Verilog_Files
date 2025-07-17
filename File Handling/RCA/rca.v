module full_adder(input a,b,cin, output s,c);

    assign s = a^b^cin;
    assign c = a&b | b&cin | cin&a;

endmodule

module rca(
        input [63:0]a,b,
        input cin,
        output [63:0]sum,
        output cout
            );
    wire [64:0]c;
    genvar i;

    assign c[0]=cin;
   // assign c[64]=cout;
    assign cout=c[64];
    
    generate
    for(i=0; i<=63; i=i+1)
        full_adder FA(a[i],b[i],c[i],sum[i],c[i+1]);
    endgenerate
endmodule
