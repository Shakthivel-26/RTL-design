module fulladder_structural(input A, B, Cin, output Sum, Cout);
  wire w1, w2, w3, w4, w5;

  xor x1(w1, A, B);
  xor x2(Sum, w1, Cin);

  and a1(w2, A, B);
  and a2(w3, B, Cin);
  and a3(w4, Cin, A);

  or o1(w5, w2, w3);
  or o2(Cout, w5, w4);
endmodule
