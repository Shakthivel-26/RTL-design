module halfsubtractor_structural(input A, B, output Diff, Borrow);
  wire A_n;

  xor (Diff, A, B);
  not (A_n, A);
  and (Borrow, A_n, B);
endmodule
