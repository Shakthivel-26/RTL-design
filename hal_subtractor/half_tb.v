module halfsubtractor_tb;
  reg A, B;
  wire Diff, Borrow;

  // Change module name to test different styles
  halfsubtractor_df uut (.A(A), .B(B), .Diff(Diff), .Borrow(Borrow));

  initial begin
    $display("A B | Diff Borrow");
    $monitor("%b %b |  %b     %b", A, B, Diff, Borrow);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
  end
endmodule
