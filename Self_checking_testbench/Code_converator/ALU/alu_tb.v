module alu_tb;
    parameter N = 4;
    reg [N-1:0] a, b;
    reg [2:0] op;
    wire [N-1:0] result;
    wire zero, carry, overflow;
    
    alu #(N) uut(a, b, op, result, zero, carry, overflow);
    
    initial begin
        $display("Testing ALU (%0d-bit)", N);
        
        // Test ADD
        op = 3'b000;
        a = 4'b0010; b = 4'b0011; #10;
        assert(result === 4'b0101 && carry === 0 && overflow === 0) 
            else $error("ADD test 1 failed");
        
        a = 4'b1000; b = 4'b1000; #10;
        assert(result === 4'b0000 && carry === 1 && overflow === 1) 
            else $error("ADD test 2 failed");
        
        // Test SUB
        op = 3'b001;
        a = 4'b0101; b = 4'b0011; #10;
        assert(result === 4'b0010 && carry === 0 && overflow === 0) 
            else $error("SUB test 1 failed");
        
        a = 4'b0001; b = 4'b0010; #10;
        assert(result === 4'b1111 && carry === 1 && overflow === 0) 
            else $error("SUB test 2 failed");
        
        // Test AND
        op = 3'b010;
        a = 4'b1010; b = 4'b1100; #10;
        assert(result === 4'b1000) else $error("AND test failed");
        
        // Test OR
        op = 3'b011;
        a = 4'b1010; b = 4'b1100; #10;
        assert(result === 4'b1110) else $error("OR test failed");
        
        // Test XOR
        op = 3'b100;
        a = 4'b1010; b = 4'b1100; #10;
        assert(result === 4'b0110) else $error("XOR test failed");
        
        // Test NOT
        op = 3'b101;
        a = 4'b1010; b = 4'bxxxx; #10;
        assert(result === 4'b0101) else $error("NOT test failed");
        
        // Test LSH
        op = 3'b110;
        a = 4'b1011; b = 4'bxxxx; #10;
        assert(result === 4'b0110) else $error("LSH test failed");
        
        // Test RSH
        op = 3'b111;
        a = 4'b1011; b = 4'bxxxx; #10;
        assert(result === 4'b0101) else $error("RSH test failed");
        
        $display("All ALU tests passed!");
        $finish;
    end
endmodule