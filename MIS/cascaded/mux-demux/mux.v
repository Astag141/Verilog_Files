
module mux(i0,i1,i2,i3,s,y);

    input [7:0]i0,i1,i2,i3;
    input [1:0]s;
    output [7:0]y;

    assign y = s[1]?(s[0]?i3:i2):(s[1]==0&&s[0]==1)?i1:i0;
    
endmodule
