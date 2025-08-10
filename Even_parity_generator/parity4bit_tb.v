module parity4bit_tb;
  reg [3:0] data;
  wire parity;

  parity4bit_df uut (.data(data), .parity(parity));

  initial begin
    $display("DATA  | PARITY");
    $monitor("%b |   %b", data, parity);

    data = 4'b0000; #10;
    data = 4'b0001; #10;
    data = 4'b0011; #10;
    data = 4'b0111; #10;
    data = 4'b1111; #10;

    $finish;
  end
endmodule
