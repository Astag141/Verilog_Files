module moore_seq_detector (
    input clk,
    input reset,
    input x,
    output reg z
);

    // State encoding
    localparam S0 = 3'b000;
    localparam S1 = 3'b001;
    localparam S2 = 3'b010;
    localparam S3 = 3'b011;
    localparam S4 = 3'b100;

    reg [2:0] current_state, next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next state logic
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

    // Output logic
    always @(*) begin
        z = (current_state == S4) ? 1'b1 : 1'b0;
    end

endmodule
