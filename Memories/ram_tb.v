`include "ram.v"
module ram_tb;
    parameter d=8,a=3,timeperiod=4;
    
    reg clk,rst_n;
    reg w_r;

    reg[d-1:0] data_in;
    reg[a-1:0] addr;

    wire[d-1:0] data_out;


    ram#(d,a) ram_8B(
                    .clk(clk),
                    .rst_n(rst_n),
                    .w_r(w_r),
                    .addr(addr),
                    .data_in(data_in),
                    .data_out(data_out)
                    );


    task write;
        begin
            data_in=$urandom_range(100,150);
            addr=$urandom_range(0,7);
        end
    endtask

    task read;
        begin
            addr=$urandom_range(0,7);
        end
    endtask
    
    always #(timeperiod/2)clk=!clk;
    initial clk=0;

    initial begin
       @(posedge clk) rst_n=0;
        #15
        rst_n=1;
    end

    initial begin
        @(posedge rst_n)
            w_r=1;
                repeat(10) begin
                    write;
                    #10;
                end
            w_r=0;
                repeat(10) begin
                    read;
                    #10;
                end
    end     

    initial #250 $finish;

endmodule




