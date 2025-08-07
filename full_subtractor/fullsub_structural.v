module fullsubtractor_structural(input A, B, Bin, output Diff, Bout);
  wire w1, w2, w3, A_n, B_n, Bin_n;
  wire t1, t2, t3;

  xor (w1, A, B);
  xor (Diff, w1, Bin);

  not (A_n, A);
  and (t1, A_n, B);
  and (t2, B, Bin);
  and (t3, A_n, Bin);
  or (Bout, t1, t2, t3);
endmodule
