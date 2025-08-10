module jkff_behavioral(input J, K, clk, reset, output reg Q);
  always @(posedge clk or posedge reset) begin
    if (reset)
      Q <= 0;
    else if (J == 0 && K == 0)
      Q <= Q;
    else if (J == 0 && K == 1)
      Q <= 0;
    else if (J == 1 && K == 0)
      Q <= 1;
    else
      Q <= ~Q;
  end
endmodule
