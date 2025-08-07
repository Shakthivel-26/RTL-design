module comparator2bit_tb;
  reg [1:0] A, B;
  wire A_gt_B, A_eq_B, A_lt_B;

  // Change module here to test other models
  comparator2bit_df uut (.A(A), .B(B), .A_gt_B(A_gt_B), .A_eq_B(A_eq_B), .A_lt_B(A_lt_B));

  initial begin
    $display("A  B | A>B A=B A<B");
    $monitor("%b %b |  %b   %b   %b", A, B, A_gt_B, A_eq_B, A_lt_B);

    A=2'b00; B=2'b00; #10;
    A=2'b01; B=2'b00; #10;
    A=2'b01; B=2'b10; #10;
    A=2'b10; B=2'b01; #10;
    A=2'b11; B=2'b11; #10;

    $finish;
  end
endmodule
