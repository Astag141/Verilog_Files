`include "mux.v"
`include "demux.v"

module testbench();
    
    reg [7:0]i0,i1,i2,i3;
    wire [7:0]y;
    reg [1:0]s;
    wire [7:0]a0,a1,a2,a3;

    mux dut(
            .i0(i0),
            .i1(i1),
            .i2(i2),
            .i3(i3),
            .s(s),
            .y(y)
            );

    demux rtl(
            .y(y),
            .s(s),
            .i0(a0),
            .i1(a1),
            .i2(a2),
            .i3(a3)
            );
    initial begin 
    i0=10; i1=12; i2=15; i3=8; s=2; #10;
    i0=11; i1=14; i2=13; i3=10; s=1; #10;
    i0=12; i1=12; i2=14; i3=5; s=3; #10;
    i0=13; i1=10; i2=15; i3=7; s=4; #10;
    end
    initial $monitor("i0=%o i1=%o i2=%o i3=%o s1=%o s0=%o y=%o a0=%o a1=%o a2=%o a3=%o",i0,i1,i2,i3,s[1],s[0],y,a0,a1,a2,a3);
endmodule
