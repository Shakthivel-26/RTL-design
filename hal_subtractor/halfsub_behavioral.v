module halfsubtractor_behavioral(input A, B, output reg Diff, Borrow);
  always @(*) begin
    Diff = A ^ B;
    Borrow = (~A) & B;
  end
endmodule
