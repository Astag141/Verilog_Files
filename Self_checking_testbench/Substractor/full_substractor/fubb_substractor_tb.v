module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;
    
    full_subtractor uut(a, b, bin, diff, bout);
    
    initial begin
        $display("Testing Full Subtractor");
        // Test all 8 possible input combinations
        for (int i = 0; i < 8; i = i + 1) begin
            {a, b, bin} = i;
            #10;
            $display("a=%b, b=%b, bin=%b, diff=%b, bout=%b", a, b, bin, diff, bout);
            
            // Expected results
            reg expected_diff = a ^ b ^ bin;
            reg expected_bout = (~a & b) | (~a & bin) | (b & bin);
            
            assert(diff === expected_diff && bout === expected_bout) 
                else $error("Test %0d failed", i);
        end
        
        $display("All Full Subtractor tests passed!");
        $finish;
    end
endmodule
