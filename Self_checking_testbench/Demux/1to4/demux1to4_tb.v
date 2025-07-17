module demux1to4_tb;
    reg in;
    reg [1:0] sel;
    wire [3:0] out;
    
    demux1to4 uut(in, sel, out);
    
    initial begin
        $display("Testing 1:4 DEMUX");
        
        in = 0;
        for (int i = 0; i < 4; i = i + 1) begin
            sel = i;
            #10;
            assert(out === 4'b0000) else $error("Test 0 %0d failed", i);
        end
        
        in = 1;
        for (int i = 0; i < 4; i = i + 1) begin
            sel = i;
            #10;
            assert(out === (1 << i)) else $error("Test 1 %0d failed", i);
        end
        
        $display("All 1:4 DEMUX tests passed!");
        $finish;
    end
endmodule
