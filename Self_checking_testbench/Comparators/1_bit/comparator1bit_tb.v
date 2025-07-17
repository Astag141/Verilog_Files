module comparator1bit_tb;
    reg a, b;
    wire eq, gt, lt;
    
    comparator1bit uut(a, b, eq, gt, lt);
    
    initial begin
        $display("Testing 1-bit Comparator");
        
        a = 0; b = 0; #10;
        assert(eq === 1 && gt === 0 && lt === 0) else $error("Test 0 failed");
        
        a = 0; b = 1; #10;
        assert(eq === 0 && gt === 0 && lt === 1) else $error("Test 1 failed");
        
        a = 1; b = 0; #10;
        assert(eq === 0 && gt === 1 && lt === 0) else $error("Test 2 failed");
        
        a = 1; b = 1; #10;
        assert(eq === 1 && gt === 0 && lt === 0) else $error("Test 3 failed");
        
        $display("All 1-bit Comparator tests passed!");
        $finish;
    end
endmodule
