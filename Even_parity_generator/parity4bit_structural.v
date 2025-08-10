module parity4bit_structural(input [3:0] data, output parity);
  wire w1, w2, w3;
  xor (w1, data[0], data[1]);
  xor (w2, w1, data[2]);
  xor (parity, w2, data[3]);
endmodule
