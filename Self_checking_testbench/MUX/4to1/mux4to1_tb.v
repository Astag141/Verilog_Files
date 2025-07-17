module mux4to1_tb;
    reg [3:0] data;
    reg [1:0] sel;
    wire out;
    
    mux4to1 uut(data, sel, out);
    
    initial begin
        $display("Testing 4:1 MUX");
        
        data = 4'b0000;
        for (int i = 0; i < 4; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 0) else $error("Test %0d failed", i);
        end
        
        data = 4'b1010;
        sel = 0; #10; assert(out === 0);
        sel = 1; #10; assert(out === 1);
        sel = 2; #10; assert(out === 0);
        sel = 3; #10; assert(out === 1);
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            data = $random;
            sel = $random % 4;
            #10;
            assert(out === data[sel]) 
                else $error("Random test %0d failed", i);
        end
        
        $display("All 4:1 MUX tests passed!");
        $finish;
    end
endmodule
