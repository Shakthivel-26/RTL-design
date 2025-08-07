module decoder3x8_structural(input A, B, C, output [7:0] out);
  wire A_n, B_n, C_n;

  not (A_n, A);
  not (B_n, B);
  not (C_n, C);

  and (out[0], A_n, B_n, C_n);
  and (out[1], A_n, B_n, C);
  and (out[2], A_n, B, C_n);
  and (out[3], A_n, B, C);
  and (out[4], A, B_n, C_n);
  and (out[5], A, B_n, C);
  and (out[6], A, B, C_n);
  and (out[7], A, B, C);
endmodule
