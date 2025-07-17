module muxNto1_tb;
    parameter WIDTH = 16;
    parameter SEL_WIDTH = $clog2(WIDTH);
    
    reg [WIDTH-1:0] data;
    reg [SEL_WIDTH-1:0] sel;
    wire out;
    
    muxNto1 #(WIDTH) uut(data, sel, out);
    
    initial begin
        $display("Testing %0d:1 MUX", WIDTH);
        
        data = 0;
        for (int i = 0; i < WIDTH; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 0) else $error("Test %0d failed", i);
        end
        
        data = {WIDTH{1'b1}};
        for (int i = 0; i < WIDTH; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 1) else $error("Test 1 %0d failed", i);
        end
        
        // Pattern test
        for (int i = 0; i < WIDTH; i = i + 1) begin
            data = 1 << i;
            for (int j = 0; j < WIDTH; j = j + 1) begin
                sel = j;
                #10;
                assert(out === (i == j)) 
                    else $error("Pattern test %0d,%0d failed", i, j);
            end
        end
        
        $display("All %0d:1 MUX tests passed!", WIDTH);
        $finish;
    end
endmodule
