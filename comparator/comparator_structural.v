module comparator2bit_structural(input [1:0] A, B, output A_gt_B, A_eq_B, A_lt_B);
  wire eq0, eq1, gt1, lt1;

  xnor(eq0, A[0], B[0]);
  xnor(eq1, A[1], B[1]);
  and(A_eq_B, eq0, eq1);

  assign A_gt_B = (A[1] & ~B[1]) | (eq1 & A[0] & ~B[0]);
  assign A_lt_B = (~A[1] & B[1]) | (eq1 & ~A[0] & B[0]);
endmodule
