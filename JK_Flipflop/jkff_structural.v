module jkff_structural(input J, K, clk, reset, output Q);
  wire D;

  assign D = (J & ~Q) | (~K & Q);

  dff_df dff_inst (.D(D), .clk(clk), .reset(reset), .Q(Q)); // Reusing DFF module
endmodule
