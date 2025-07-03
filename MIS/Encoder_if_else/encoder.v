module encoder #(parameter IN=8,OUT=3)
                (input [IN-1:0]i,
                 output reg [OUT-1:0]y);

       always @(*)//wildcard
       begin
        if(i==8'b0000_0001)
           y=3'b000;
       else if(i==8'b0000_0010)
           y=3'b001;
       else if(i==8'b0000_0100)
           y=3'b010;
       else if(i==8'b0000_1000)
           y=3'b011;
       else if(i==8'b0001_0000)
           y=3'b100;
       else if(i==8'b0010_0000)
           y=3'b101;
       else if(i==8'b0100_0000)
           y=3'b110;
           else
           y=3'b111;
           end
endmodule
