module tb_demux1x4;
    reg d;
    reg [1:0] sel;
    wire y0, y1, y2, y3;
    demux1x4 uut (.d(d), .sel(sel), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
    initial begin
        d = 1;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule
