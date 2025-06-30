module demux(y,s,i0,i1,i2,i3);
    
    input [7:0]y;
    input [1:0]s;
    output [7:0]i0,i1,i2,i3;

    assign i0 = (s==0)?y:0;
    assign i1 = (s==1)?y:0;
    assign i2 = (s==2)?y:0;
    assign i3 = (s==3)?y:0;
    
endmodule
