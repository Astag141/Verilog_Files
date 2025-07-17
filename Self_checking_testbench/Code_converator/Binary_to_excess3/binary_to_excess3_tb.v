module binary_to_excess3_tb;
    reg [3:0] binary;
    wire [3:0] excess3;
    
    binary_to_excess3 uut(binary, excess3);
    
    initial begin
        $display("Testing Binary to Excess-3 Converter");
        
        for (int i = 0; i < 16; i = i + 1) begin
            binary = i;
            #10;
            assert(excess3 === i + 3) else $error("Test %0d failed", i);
        end
        
        $display("All Binary to Excess-3 tests passed!");
        $finish;
    end
endmodule