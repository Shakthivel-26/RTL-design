module muxstructural(input a, b, sel, output y);
  wire not_sel, a_and, b_and;

  not u1(not_sel, sel);
  and u2(a_and, a, not_sel);
  and u3(b_and, b, sel);
  or  u4(y, a_and, b_and);
endmodule
