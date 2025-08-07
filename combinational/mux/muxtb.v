module muxtb;
  reg a, b, sel;
  wire y;

  // Change the module name to test the model you want
  muxdf uut (.a(a), .b(b), .sel(sel), .y(y));

  initial begin
    $display("A B SEL | Y");
    $monitor("%b %b  %b  | %b", a, b, sel, y);

    a = 0; b = 0; sel = 0; #10;
    a = 0; b = 1; sel = 0; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 1; sel = 0; #10;
    a = 0; b = 0; sel = 1; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 1; #10;

    $finish;
  end
endmodule
