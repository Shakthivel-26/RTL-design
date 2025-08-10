module parity4bit_behavioral(input [3:0] data, output reg parity);
  always @(*) begin
    parity = data[0] ^ data[1] ^ data[2] ^ data[3];
  end
endmodule
