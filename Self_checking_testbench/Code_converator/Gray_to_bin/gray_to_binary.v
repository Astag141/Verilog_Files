module gray_to_binary #(parameter WIDTH=4) (
    input [WIDTH-1:0] gray,
    output [WIDTH-1:0] binary
);
    integer i;
    reg [WIDTH-1:0] temp;
    
    always @(*) begin
        temp[WIDTH-1] = gray[WIDTH-1];
        for (i = WIDTH-2; i >= 0; i = i - 1) begin
            temp[i] = temp[i+1] ^ gray[i];
        end
    end
    
    assign binary = temp;
endmodule
