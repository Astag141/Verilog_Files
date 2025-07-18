module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;
    data2 = 9;
    $display ("Result for data1 >= data2 : %0d", data1 >= data2);

    data1 = 45;
    data2 = 45;
    $display ("Result for data1 <= data2 : %0d", data1 <= data2);

    data1 = 9;
    data2 = 8;
    $display ("Result for data1 > data2 : %0d", data1 > data2);

    data1 = 22;
    data2 = 22;
    $display ("Result for data1 < data2 : %0d", data1 < data2);

  end
endmodule
