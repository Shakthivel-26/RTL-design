module fullsubtractor_behavioral(input A, B, Bin, output reg Diff, Bout);
  always @(*) begin
    Diff = A ^ B ^ Bin;
    Bout = (~A & B) | (B & Bin) | (~A & Bin);
  end
endmodule
