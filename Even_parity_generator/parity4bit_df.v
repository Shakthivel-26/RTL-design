module parity4bit_df(input [3:0] data, output parity);
  assign parity = ^data; 
endmodule
