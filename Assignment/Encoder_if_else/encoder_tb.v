`include "encoder.v"

module encoder_tb //#(parameter IN=8, OUT=3)
                    ();
    reg [7:0]i;
    wire [2:0]y;

   integer x;

    encoder dut(
                .i(i),
                .y(y)
                );
    
    initial begin
    for(x=0;x<=7;x=x+1)
        #10 i=x;
        
        end

        initial $monitor("i=%b y=%b",i,y,$time);
        
endmodule
