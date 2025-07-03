`include "encoder.v"
`include "decoder.v"

module testbench();

    reg [3:0]i;
    wire [1:0]y;
    wire [3:0]a;

    encoder dut(
                .i(i),
                .y(y)
                );
    decoder rtl(
                .y(y),
                .i(a)
                );
    initial begin
    i=2;#10;
    i=4;#10;
    i=1;#10;
    i=8;#10;
    end
    initial $monitor("i3=%b i2=%b i1=%b i0=%b y1=%b y0=%b a3=%b a2=%b a1=%b a0=%b",i[3],i[2],i[1],i[0],y[1],y[0],a[3],a[2],a[1],a[0]);
endmodule
