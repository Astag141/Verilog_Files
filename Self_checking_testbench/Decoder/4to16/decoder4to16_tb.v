module decoder4to16_tb;
    reg [3:0] in;
    wire [15:0] out;
    
    decoder4to16 uut(in, out);
    
    initial begin
        $display("Testing 4-to-16 Decoder");
        
        for (int i = 0; i < 16; i = i + 1) begin
            in = i;
            #10;
            assert(out === (1 << i)) else $error("Test %0d failed", i);
        end
        
        $display("All 4-to-16 Decoder tests passed!");
        $finish;
    end
endmodule
