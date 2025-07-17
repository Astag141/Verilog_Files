module comparator4bit_tb;
    reg [3:0] a, b;
    wire eq, gt, lt;
    
    comparator4bit uut(a, b, eq, gt, lt);
    
    initial begin
        $display("Testing 4-bit Comparator");
        
        // Equal cases
        a = 4'b0000; b = 4'b0000; #10;
        assert(eq === 1 && gt === 0 && lt === 0) else $error("Test 0 failed");
        
        a = 4'b1010; b = 4'b1010; #10;
        assert(eq === 1 && gt === 0 && lt === 0) else $error("Test 1 failed");
        
        // Greater than cases
        a = 4'b0001; b = 4'b0000; #10;
        assert(eq === 0 && gt === 1 && lt === 0) else $error("Test 2 failed");
        
        a = 4'b1000; b = 4'b0111; #10;
        assert(eq === 0 && gt === 1 && lt === 0) else $error("Test 3 failed");
        
        // Less than cases
        a = 4'b0000; b = 4'b0001; #10;
        assert(eq === 0 && gt === 0 && lt === 1) else $error("Test 4 failed");
        
        a = 4'b0111; b = 4'b1000; #10;
        assert(eq === 0 && gt === 0 && lt === 1) else $error("Test 5 failed");
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            a = $random;
            b = $random;
            #10;
            assert(eq === (a == b)) else $error("Random eq test %0d failed", i);
            assert(gt === (a > b)) else $error("Random gt test %0d failed", i);
            assert(lt === (a < b)) else $error("Random lt test %0d failed", i);
        end
        
        $display("All 4-bit Comparator tests passed!");
        $finish;
    end
endmodule
