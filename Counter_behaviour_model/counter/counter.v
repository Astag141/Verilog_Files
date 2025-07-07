module counter(
            input clk,rst,
            output [3:0]count
            );

    always @(*)
    begin
    if(rst)
        count<=0;
        else
            begin
            count<=count+1;
        end
    end
   endmodule
