module tb_Synchronous_FIFO;
    parameter WIDTH = 8;
    parameter DEPTH = 16;

    reg clk;
    reg rst_n;
    reg [WIDTH-1:0] data_in;
    reg wr_en, rd_en;
    wire [WIDTH-1:0] data_out;
    wire full, empty;

    // Instantiate the FIFO
    Synchronous_FIFO #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH)
    ) fifo_inst (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        wr_en = 0;
        rd_en = 0;
        data_in = 0;
        #10 rst_n = 1;
        
        // Write data (Fill FIFO)
        repeat (DEPTH) begin
            @(negedge clk);
            if (!full) begin
                wr_en = 1;
                data_in = $random;
            end
            @(negedge clk);
        end
        wr_en = 0;

        // Read data (Empty FIFO)
        repeat (DEPTH) begin
            @(negedge clk);
            if (!empty) begin
                rd_en = 1;
            end
            @(negedge clk);
        end
        rd_en = 0;

        // Finish simulation
        #20 $finish;
    end
endmodule

