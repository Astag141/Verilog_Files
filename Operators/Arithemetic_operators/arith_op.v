module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;
    data2 = 9;

    $display ("Add + = %d", data1 + data2);
    $display ("Sub - = %d", data1 - data2);
    $display ("Mul * = %d", data1 * data2);
    $display ("Div / = %d", data1 / data2);
    $display ("Mod %% = %d", data1 % data2);
    $display ("Pow ** = %d", data2 ** 2);

  end
endmodule