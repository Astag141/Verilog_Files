module tb_adder_subtractor_4bit;

    reg [3:0] a, b;
    reg mode;
    wire [3:0] result;
    wire cout;

    adder_subtractor_4bit uut (
        .a(a), .b(b), .mode(mode),
        .result(result), .cout(cout)
    );

    initial begin
        $display("Time\tMode\tA\tB\tResult\tCarry");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, mode, a, b, result, cout);

        // Addition examples
        mode = 0;
        a = 4'b0101; b = 4'b0011; #10;  // 5 + 3 = 8
        a = 4'b1111; b = 4'b0001; #10;  // 15 + 1 = 0 (carry = 1)

        // Subtraction examples
        mode = 1;
        a = 4'b0101; b = 4'b0011; #10;  // 5 - 3 = 2
        a = 4'b0011; b = 4'b0101; #10;  // 3 - 5 = -2 (2's comp)

        $finish;
    end
endmodule
