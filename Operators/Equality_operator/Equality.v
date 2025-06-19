module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;     data2 = 9;      $display ("Result for data1(%0d) === data2(%0d) : %0d", data1, data2, data1 === data2);
    data1 = 'b101x; data2 = 'b1011; $display ("Result for data1(%0b) === data2(%0b) : %0d", data1, data2, data1 === data2);
    data1 = 'b101x; data2 = 'b101x; $display ("Result for data1(%0b) === data2(%0b) : %0d", data1, data2, data1 === data2);
    data1 = 'b101z; data2 = 'b1z00; $display ("Result for data1(%0b) !== data2(%0b) : %0d", data1, data2, data1 !== data2);
    data1 = 39;     data2 = 39;     $display ("Result for data1(%0d) == data2(%0d) : %0d", data1, data2, data1 == data2);
    data1 = 14;     data2 = 14;     $display ("Result for data1(%0d) != data2(%0d) : %0d", data1, data2, data1 != data2);
  end
endmodule