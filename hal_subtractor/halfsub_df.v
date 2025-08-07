module halfsubtractor_df(input A, B, output Diff, Borrow);
  assign Diff = A ^ B;
  assign Borrow = ~A & B;
endmodule
