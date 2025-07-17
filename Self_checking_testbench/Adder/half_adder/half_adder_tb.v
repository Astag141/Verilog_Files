
module half_adder_tb;
    reg a, b;
    wire sum, carry;
    
    half_adder uut(a, b, sum, carry);
    
    initial begin
        $display("Testing Half Adder");
        a = 0; b = 0; #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        assert(sum === 0 && carry === 0) else $error("Test 0 failed");
        
        a = 0; b = 1; #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        assert(sum === 1 && carry === 0) else $error("Test 1 failed");
        
        a = 1; b = 0; #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        assert(sum === 1 && carry === 0) else $error("Test 2 failed");
        
        a = 1; b = 1; #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        assert(sum === 0 && carry === 1) else $error("Test 3 failed");
        
        $display("All Half Adder tests passed!");
        $finish;
    end
endmodule
