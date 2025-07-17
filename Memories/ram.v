module ram#(parameter d_width=8, a_width=3)(
                                            input clk,
                                            input rst_n,
                                            input w_r,
                                            input [d_width-1:0] data_in,
                                            input [a_width-1:0] addr,
                                            output reg [d_width-1:0] data_out
                                            );

        reg [d_width-1:0] memory [d_width-1:0];

        integer i;

        always @(posedge clk)
            begin
                if(!rst_n)
                    begin
                          data_out<=0;
                            for(i=0; i<d_width; i=i+1)
                                begin
                                    memory[i]<=0;
                                end
                    end

                 else
                     begin
                            if(w_r)
                                memory[addr]<=data_in;
                            else
                                data_out<=memory[addr];
                     end
            end

endmodule
