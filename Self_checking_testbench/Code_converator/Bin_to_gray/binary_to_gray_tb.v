module binary_to_gray_tb;
    parameter WIDTH = 4;
    reg [WIDTH-1:0] binary;
    wire [WIDTH-1:0] gray;
    
    binary_to_gray #(WIDTH) uut(binary, gray);
    
    initial begin
        $display("Testing Binary to Gray Converter (%0d-bit)", WIDTH);
        
        binary = 4'b0000; #10;
        assert(gray === 4'b0000) else $error("Test 0 failed");
        
        binary = 4'b0001; #10;
        assert(gray === 4'b0001) else $error("Test 1 failed");
        
        binary = 4'b0010; #10;
        assert(gray === 4'b0011) else $error("Test 2 failed");
        
        binary = 4'b0100; #10;
        assert(gray === 4'b0110) else $error("Test 3 failed");
        
        binary = 4'b1000; #10;
        assert(gray === 4'b1100) else $error("Test 4 failed");
        
        binary = 4'b1111; #10;
        assert(gray === 4'b1000) else $error("Test 5 failed");
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            binary = $random;
            #10;
            reg [WIDTH-1:0] expected = binary ^ (binary >> 1);
            assert(gray === expected) else $error("Random test %0d failed", i);
        end
        
        $display("All Binary to Gray tests passed!");
        $finish;
    end
endmodule
