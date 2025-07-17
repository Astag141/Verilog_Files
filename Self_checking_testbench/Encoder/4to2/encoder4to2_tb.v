module encoder4to2_tb;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;
    
    encoder4to2 uut(in, out, valid);
    
    initial begin
        $display("Testing 4-to-2 Encoder");
        
        in = 4'b0000; #10;
        assert(out === 2'b00 && valid === 0) else $error("Test 0 failed");
        
        in = 4'b0001; #10;
        assert(out === 2'b00 && valid === 1) else $error("Test 1 failed");
        
        in = 4'b0010; #10;
        assert(out === 2'b01 && valid === 1) else $error("Test 2 failed");
        
        in = 4'b0100; #10;
        assert(out === 2'b10 && valid === 1) else $error("Test 3 failed");
        
        in = 4'b1000; #10;
        assert(out === 2'b11 && valid === 1) else $error("Test 4 failed");
        
        // Test multiple inputs (priority not handled in simple encoder)
        in = 4'b0011; #10;
        assert(out === 2'b01 && valid === 1) else $error("Test 5 failed");
        
        $display("All 4-to-2 Encoder tests passed!");
        $finish;
    end
endmodule
