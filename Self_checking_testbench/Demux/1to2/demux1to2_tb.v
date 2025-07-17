module demux1to2_tb;
    reg in, sel;
    wire [1:0] out;
    
    demux1to2 uut(in, sel, out);
    
    initial begin
        $display("Testing 1:2 DEMUX");
        
        in = 0; sel = 0; #10;
        assert(out === 2'b00) else $error("Test 0 failed");
        
        in = 1; sel = 0; #10;
        assert(out === 2'b10) else $error("Test 1 failed");
        
        in = 0; sel = 1; #10;
        assert(out === 2'b00) else $error("Test 2 failed");
        
        in = 1; sel = 1; #10;
        assert(out === 2'b01) else $error("Test 3 failed");
        
        $display("All 1:2 DEMUX tests passed!");
        $finish;
    end
endmodule
