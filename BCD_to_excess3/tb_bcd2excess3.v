module tb_bcd2excess3;
    reg [3:0] bcd;
    wire [3:0] excess3;
    bcd2excess3 uut (.bcd(bcd), .excess3(excess3));
    initial begin
        for (bcd = 0; bcd < 10; bcd = bcd + 1)
            #10;
        $finish;
    end
endmodule
