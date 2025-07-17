module priority_encoder_tb;
    parameter WIDTH = 8;
    reg [WIDTH-1:0] in;
    wire [$clog2(WIDTH)-1:0] out;
    wire valid;
    
    priority_encoder #(WIDTH) uut(in, out, valid);
    
    initial begin
        $display("Testing Priority Encoder (%0d-to-%0d)", WIDTH, $clog2(WIDTH));
        
        in = 0; #10;
        assert(valid === 0) else $error("Test 0 failed");
        
        for (int i = 0; i < WIDTH; i = i + 1) begin
            in = 1 << i;
            #10;
            assert(out === i && valid === 1) else $error("Test %0d failed", i+1);
        end
        
        // Test multiple inputs with priority
        in = 8'b00001100; #10;
        assert(out === 3 && valid === 1) else $error("Test 9 failed");
        
        in = 8'b00110100; #10;
        assert(out === 5 && valid === 1) else $error("Test 10 failed");
        
        in = 8'b11111111; #10;
        assert(out === 7 && valid === 1) else $error("Test 11 failed");
        
        $display("All Priority Encoder tests passed!");
        $finish;
    end
endmodule
