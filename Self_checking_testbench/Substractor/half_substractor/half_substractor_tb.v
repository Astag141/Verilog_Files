module half_subtractor_tb;
    reg a, b;
    wire diff, borrow;
    
    half_subtractor uut(a, b, diff, borrow);
    
    initial begin
        $display("Testing Half Subtractor");
        a = 0; b = 0; #10;
        assert(diff === 0 && borrow === 0) else $error("Test 0 failed");
        
        a = 0; b = 1; #10;
        assert(diff === 1 && borrow === 1) else $error("Test 1 failed");
        
        a = 1; b = 0; #10;
        assert(diff === 1 && borrow === 0) else $error("Test 2 failed");
        
        a = 1; b = 1; #10;
        assert(diff === 0 && borrow === 0) else $error("Test 3 failed");
        
        $display("All Half Subtractor tests passed!");
        $finish;
    end
endmodule
