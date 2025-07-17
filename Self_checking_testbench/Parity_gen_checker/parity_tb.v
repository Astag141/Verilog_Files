module parity_tb;
    parameter WIDTH = 8;
    reg [WIDTH-1:0] data;
    wire parity_bit;
    
    parity #(WIDTH) uut(data, parity_bit);
    
    initial begin
        $display("Testing Parity Generator/Checker (%0d-bit)", WIDTH);
        
        // Test known cases
        data = 0; #10;
        assert(parity_bit === 0) else $error("Test 0 failed");
        
        data = 1; #10;
        assert(parity_bit === 1) else $error("Test 1 failed");
        
        data = 8'b10101010; #10;
        assert(parity_bit === 0) else $error("Test 2 failed");
        
        data = 8'b10101011; #10;
        assert(parity_bit === 1) else $error("Test 3 failed");
        
        // Random tests
        for (int i = 0; i < 20; i = i + 1) begin
            data = $random;
            #10;
            assert(parity_bit === ^data) 
                else $error("Random test %0d failed", i);
        end
        
        $display("All Parity tests passed!");
        $finish;
    end
endmodule
