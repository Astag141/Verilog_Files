module tb_mux8x1;
    reg [7:0] in;
    reg s0, s1, s2;
    wire y;

    mux8x1_gate uut (
        .i0(in[0]), .i1(in[1]), .i2(in[2]), .i3(in[3]),
        .i4(in[4]), .i5(in[5]), .i6(in[6]), .i7(in[7]),
        .s0(s0), .s1(s1), .s2(s2),
        .y(y)
    );

    initial begin
        $display("Time | s2 s1 s0 | Output y");
        $monitor("%4t |  %b  %b  %b |   %b", $time, s2, s1, s0, y);
        
        in = 8'b10101010; 
        s2 = 0; s1 = 0; s0 = 0; #10;
        s2 = 0; s1 = 0; s0 = 1; #10;
        s2 = 0; s1 = 1; s0 = 0; #10;
        s2 = 0; s1 = 1; s0 = 1; #10;
        s2 = 1; s1 = 0; s0 = 0; #10;
        s2 = 1; s1 = 0; s0 = 1; #10;
        s2 = 1; s1 = 1; s0 = 0; #10;
        s2 = 1; s1 = 1; s0 = 1; #10;

        $finish;
    end
endmodule

