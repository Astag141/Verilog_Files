module moore_seq_detector (
    input clk,
    input reset,
    input x,
    output reg z
);
    typedef enum logic [2:0] {
        S0, S1, S2, S3, S4
    } state_t;

    state_t current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            S0: next_state = (x == 1) ? S1 : S0;
            S1: next_state = (x == 0) ? S2 : S1;
            S2: next_state = (x == 1) ? S3 : S0;
            S3: next_state = (x == 1) ? S4 : S2;
            S4: next_state = (x == 1) ? S1 : S2;
            default: next_state = S0;
        endcase
    end

    always @(*) begin
        z = (current_state == S4) ? 1 : 0;
    end
endmodule