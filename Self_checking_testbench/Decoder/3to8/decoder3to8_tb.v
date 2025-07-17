module decoder3to8_tb;
    reg [2:0] in;
    wire [7:0] out;
    
    decoder3to8 uut(in, out);
    
    initial begin
        $display("Testing 3-to-8 Decoder");
        
        for (int i = 0; i < 8; i = i + 1) begin
            in = i;
            #10;
            assert(out === (1 << i)) else $error("Test %0d failed", i);
        end
        
        $display("All 3-to-8 Decoder tests passed!");
        $finish;
    end
endmodule
