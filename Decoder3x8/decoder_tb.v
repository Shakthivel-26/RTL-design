module decoder3x8_tb;
  reg [2:0] in;
  wire [7:0] out;

  // Change module name here to test others
  decoder3x8_df uut (.in(in), .out(out));

  integer i;
  initial begin
    $display("IN  | OUT");
    $monitor("%b | %b", in, out);

    for (i = 0; i < 8; i = i + 1) begin
      in = i;
      #10;
    end

    $finish;
  end
endmodule
