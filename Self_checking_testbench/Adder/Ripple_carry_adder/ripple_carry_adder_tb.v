module ripple_carry_adder_tb;
    parameter N = 4;
    reg [N-1:0] a, b;
    reg cin;
    wire [N-1:0] sum;
    wire cout;
    
    ripple_carry_adder #(N) uut(a, b, cin, sum, cout);
    
    initial begin
        $display("Testing Ripple Carry Adder (4-bit)");
        
        // Test basic addition
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        assert(sum === 4'b0000 && cout === 0) else $error("Test 0 failed");
        
        a = 4'b0001; b = 4'b0001; cin = 0; #10;
        assert(sum === 4'b0010 && cout === 0) else $error("Test 1 failed");
        
        a = 4'b1000; b = 4'b1000; cin = 0; #10;
        assert(sum === 4'b0000 && cout === 1) else $error("Test 2 failed");
        
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        assert(sum === 4'b0000 && cout === 1) else $error("Test 3 failed");
        
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        assert(sum === 4'b0000 && cout === 1) else $error("Test 4 failed");
        
        // Random tests
        for (int i = 0; i < 10; i = i + 1) begin
            a = $random;
            b = $random;
            cin = $random % 2;
            #10;
            
            reg [N:0] expected = a + b + cin;
            assert(sum === expected[N-1:0] && cout === expected[N]) 
                else $error("Random test %0d failed", i);
        end
        
        $display("All Ripple Carry Adder tests passed!");
        $finish;
    end
endmodule
