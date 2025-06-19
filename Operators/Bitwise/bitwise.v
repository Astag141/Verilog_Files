module des;
  reg 		 data1 [4] ;
  reg 		 data2 [4] ;
  int 		 i, j;

  initial begin
    data1[0] = 0;  data2[0] = 0;
    data1[1] = 1;  data2[1] = 1;
    data1[2] = 'x; data2[2] = 'x;
    data1[3] = 'z; data2[3] = 'z;

    for (i = 0; i < 4; i += 1) begin
      for (j = 0; j < 4; j += 1) begin
        $display ("data1(%0d) & data2(%0d) = %0d", data1[i], data2[j], data1[i] & data2[j]);
      end
    end
  end
endmodule