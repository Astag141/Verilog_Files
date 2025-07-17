module bcd_to_binary_tb;
    reg [3:0] bcd;
    wire [3:0] binary;
    
    bcd_to_binary uut(bcd, binary);
    
    initial begin
        $display("Testing BCD to Binary Converter");
        
        for (int i = 0; i < 10; i = i + 1) begin
            bcd = i;
            #10;
            assert(binary === i) else $error("Test %0d failed", i);
        end
        
        // Test invalid BCD values
        for (int i = 10; i < 16; i = i + 1) begin
            bcd = i;
            #10;
            assert(binary === 0) else $error("Test invalid %0d failed", i);
        end
        
        $display("All BCD to Binary tests passed!");
        $finish;
    end
endmodule
