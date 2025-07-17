module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;
    
    full_adder uut(a, b, cin, sum, cout);
    
    initial begin
        $display("Testing Full Adder");
        // Test all 8 possible input combinations
        for (int i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #10;
            $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
            
            // Expected results
            reg expected_sum = a ^ b ^ cin;
            reg expected_cout = (a & b) | (b & cin) | (cin & a);
            
            assert(sum === expected_sum && cout === expected_cout) 
                else $error("Test %0d failed", i);
        end
        
        $display("All Full Adder tests passed!");
        $finish;
    end
endmodule
