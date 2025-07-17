module gray_to_binary_tb;
    parameter WIDTH = 4;
    reg [WIDTH-1:0] gray;
    wire [WIDTH-1:0] binary;
    
    gray_to_binary #(WIDTH) uut(gray, binary);
    
    initial begin
        $display("Testing Gray to Binary Converter (%0d-bit)", WIDTH);
        
        gray = 4'b0000; #10;
        assert(binary === 4'b0000) else $error("Test 0 failed");
        
        gray = 4'b0001; #10;
        assert(binary === 4'b0001) else $error("Test 1 failed");
        
        gray = 4'b0011; #10;
        assert(binary === 4'b0010) else $error("Test 2 failed");
        
        gray = 4'b0110; #10;
        assert(binary === 4'b0100) else $error("Test 3 failed");
        
        gray = 4'b1100; #10;
        assert(binary === 4'b1000) else $error("Test 4 failed");
        
        gray = 4'b1000; #10;
        assert(binary === 4'b1111) else $error("Test 5 failed");
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            reg [WIDTH-1:0] test_binary = $random;
            gray = test_binary ^ (test_binary >> 1);
            #10;
            assert(binary === test_binary) else $error("Random test %0d failed", i);
        end
        
        $display("All Gray to Binary tests passed!");
        $finish;
    end
endmodule
