module dff_structural(input D, clk, reset, output Q);
  wire Qm;

  // Master latch
  dlatch master (.D(D), .clk(~clk), .reset(reset), .Q(Qm));
  // Slave latch
  dlatch slave  (.D(Qm), .clk(clk),  .reset(reset), .Q(Q));

endmodule

// D Latch module for structural modeling
module dlatch(input D, clk, reset, output reg Q);
  always @(clk or reset or D) begin
    if (reset)
      Q <= 0;
    else if (clk)
      Q <= D;
  end
endmodule
