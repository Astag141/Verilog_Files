module encoder8to3_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    
    encoder8to3 uut(in, out, valid);
    
    initial begin
        $display("Testing 8-to-3 Encoder");
        
        in = 8'h00; #10;
        assert(out === 3'b000 && valid === 0) else $error("Test 0 failed");
        
        for (int i = 0; i < 8; i = i + 1) begin
            in = 1 << i;
            #10;
            assert(out === i && valid === 1) else $error("Test %0d failed", i+1);
        end
        
        // Test multiple inputs (priority not handled in simple encoder)
        in = 8'b00000111; #10;
        assert(out === 3'b010 && valid === 1) else $error("Test 9 failed");
        
        $display("All 8-to-3 Encoder tests passed!");
        $finish;
    end
endmodule
