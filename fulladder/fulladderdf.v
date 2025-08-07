module fulladder_df(input A, B, Cin, output Sum, Cout);
  assign Sum  = A ^ B ^ Cin;
  assign Cout = (A & B) | (B & Cin) | (Cin & A);
endmodule
