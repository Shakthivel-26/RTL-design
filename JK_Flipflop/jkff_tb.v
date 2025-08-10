module jkff_tb;
  reg J, K, clk, reset;
  wire Q;

  jkff_df uut (.J(J), .K(K), .clk(clk), .reset(reset), .Q(Q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end

  initial begin
    $display("TIME\tJ\tK\tRESET\tQ");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, J, K, reset, Q);

    reset = 1; J = 0; K = 0; #10;
    reset = 0; J = 0; K = 0; #10;
    J = 0; K = 1; #10;
    J = 1; K = 0; #10;
    J = 1; K = 1; #20;
    J = 0; K = 0; #10;

    $finish;
  end
endmodule
