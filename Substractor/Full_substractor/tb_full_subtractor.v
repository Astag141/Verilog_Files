module tb_full_subtractor;
    reg a, b, bin;
    wire diff, bout;
    full_subtractor uut (.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));
    initial begin
        a=0; b=0; bin=0; #10;
        a=0; b=1; bin=1; #10;
        a=1; b=0; bin=0; #10;
        a=1; b=1; bin=1; #10;
        $finish;
    end
initial $monitor("tb_a=%b tb_b=%b tb_diff=%b tb_bout=%b tb_bin=%b",a,b,diff,bout,bin);
endmodule
