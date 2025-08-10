module dff_tb;
  reg D, clk, reset;
  wire Q;

  dff_df uut (.D(D), .clk(clk), .reset(reset), .Q(Q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $display("TIME\tD\tRESET\tQ");
    $monitor("%0t\t%b\t%b\t%b", $time, D, reset, Q);

    reset = 1; D = 0; #10;
    reset = 0; D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    reset = 1; #10;
    reset = 0; D = 0; #10;

    $finish;
  end
endmodule
