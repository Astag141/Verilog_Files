module full_adder(
    input a,b,cin,
    output sum,carry
        );

    assign {carry,sum} = a+b+cin;

endmodule

module full_subtractor(
            input a,b,cin,
            output diff,borrow
                );

    assign {borrow,diff} = a-b-cin;
 // assign diff = a^b^cin; 
 // assign borrow = ~a&b | cin&(a^b);


endmodule

module adder #(parameter mode=0)(
        input a,b,cin,//bin,
        output x,y
            );
     
  //   assign cin=bin;
    generate
        if(mode==0)
            full_adder FA(
                .a(a),
                .b(b),
                .cin(cin),
                .sum(x),
                .carry(y)
                          );

            else
                full_subtractor FS(
                    .a(a),
                    .b(b),
                    //.bin(bin),
                    .cin(cin),
                    .diff(x),
                    .borrow(y)
                               );

                endgenerate
        endmodule        

