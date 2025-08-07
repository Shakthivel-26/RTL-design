module comparator2bit_behavioral(input [1:0] A, B, output reg A_gt_B, A_eq_B, A_lt_B);
  always @(*) begin
    A_gt_B = 0;
    A_eq_B = 0;
    A_lt_B = 0;
    
    if (A > B)
      A_gt_B = 1;
    else if (A == B)
      A_eq_B = 1;
    else
      A_lt_B = 1;
  end
endmodule
