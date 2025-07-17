module demux1to8_tb;
    reg in;
    reg [2:0] sel;
    wire [7:0] out;
    
    demux1to8 uut(in, sel, out);
    
    initial begin
        $display("Testing 1:8 DEMUX");
        
        in = 0;
        for (int i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 8'h00) else $error("Test 0 %0d failed", i);
        end
        
        in = 1;
        for (int i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
            assert(out === (1 << i)) else $error("Test 1 %0d failed", i);
        end
        
        $display("All 1:8 DEMUX tests passed!");
        $finish;
    end
endmodule
