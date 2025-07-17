module mux8to1_tb;
    reg [7:0] data;
    reg [2:0] sel;
    wire out;
    
    mux8to1 uut(data, sel, out);
    
    initial begin
        $display("Testing 8:1 MUX");
        
        data = 8'h00;
        for (int i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 0) else $error("Test %0d failed", i);
        end
        
        data = 8'hAA;
        for (int i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
            assert(out === (i % 2)) else $error("Test AA %0d failed", i);
        end
        
        // Random tests
        for (int i = 0; i < 20; i = i + 1) begin
            data = $random;
            sel = $random % 8;
            #10;
            assert(out === data[sel]) 
                else $error("Random test %0d failed", i);
        end
        
        $display("All 8:1 MUX tests passed!");
        $finish;
    end
endmodule
