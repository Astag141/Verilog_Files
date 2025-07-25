module jk_flip_flop (
    input wire clk,
    input wire j,
    input wire k,
    input wire rst,
    output reg q,
    output wire q_bar
);
    assign q_bar = ~q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else begin
            case ({j, k})
                2'b00: q <= q;      
                2'b01: q <= 0;      
                2'b10: q <= 1;      
                2'b11: q <= ~q;      
            endcase
        end
    end
endmodule
