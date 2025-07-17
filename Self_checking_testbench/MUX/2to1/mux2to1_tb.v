module mux2to1_tb;
    reg [1:0] data;
    reg sel;
    wire out;
    
    mux2to1 uut(data, sel, out);
    
    initial begin
        $display("Testing 2:1 MUX");
        
        data = 2'b00; sel = 0; #10;
        assert(out === 0) else $error("Test 0 failed");
        
        data = 2'b01; sel = 0; #10;
        assert(out === 1) else $error("Test 1 failed");
        
        data = 2'b10; sel = 1; #10;
        assert(out === 1) else $error("Test 2 failed");
        
        data = 2'b11; sel = 1; #10;
        assert(out === 1) else $error("Test 3 failed");
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            data = $random;
            sel = $random % 2;
            #10;
            assert(out === (sel ? data[1] : data[0])) 
                else $error("Random test %0d failed", i);
        end
        
        $display("All 2:1 MUX tests passed!");
        $finish;
    end
endmodule
