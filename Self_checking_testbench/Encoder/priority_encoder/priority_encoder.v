module priority_encoder #(parameter WIDTH=8) (
    input [WIDTH-1:0] in,
    output [$clog2(WIDTH)-1:0] out,
    output valid
);
    integer i;
    reg found;
    
    always @(*) begin
        out = 0;
        found = 0;
        for (i = WIDTH-1; i >= 0; i = i - 1) begin
            if (in[i] && !found) begin
                out = i;
                found = 1;
            end
        end
    end
    
    assign valid = |in;
endmodule
