module comparator2bit_df(input [1:0] A, B, output A_gt_B, A_eq_B, A_lt_B);
  assign A_gt_B = (A > B);
  assign A_eq_B = (A == B);
  assign A_lt_B = (A < B);
endmodule
