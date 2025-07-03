module tb_half_adder;
    reg a, b;
    wire sum, carry;
    half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));
    initial begin

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
initial $monitor("tb_a=%b tb_b=%b tb_sum=%b tb_carry=%b",a,b,sum,carry);
endmodule
