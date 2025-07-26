module mealy_seq_detector (
    input clk,
    input reset,
    input x,
    output reg z
);
    // State encoding
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;
    reg [1:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end
    always @(*) begin
        z = 0;
        case (current_state)
            S0: next_state = (x == 1) ? S1 : S0;
            S1: next_state = (x == 0) ? S2 : S1;
            S2: next_state = (x == 1) ? S3 : S0;
            S3: begin
                if (x == 1) begin
                    next_state = S1;
                    z = 1;
                end else begin
                    next_state = S2;
                    z = 0;
                end
            end
            default: next_state = S0;
        endcase
    end
endmodule

