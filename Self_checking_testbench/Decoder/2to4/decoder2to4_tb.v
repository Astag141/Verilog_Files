module decoder2to4_tb;
    reg [1:0] in;
    wire [3:0] out;
    
    decoder2to4 uut(in, out);
    
    initial begin
        $display("Testing 2-to-4 Decoder");
        
        for (int i = 0; i < 4; i = i + 1) begin
            in = i;
            #10;
            assert(out === (1 << i)) else $error("Test %0d failed", i);
        end
        
        $display("All 2-to-4 Decoder tests passed!");
        $finish;
    end
endmodule
