module up_counter (
    input clk,
    input reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'd0;
        else
            count <= count + 1;
    end
endmodule