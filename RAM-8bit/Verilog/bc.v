module bc(in, rw, sel, out);

  input in, rw, sel;
  output out;

  wire w1, w2, w3, w4;
  // not n1(w6, in);
  // not n2(w7, rw);
  and a1(w1, sel, in, ~rw);
  and a2(w2, sel, ~rw, ~in);
  nor nr1(w3, w1, w4);
  nor nr2(w4, w2, w3);
  and a3(out, sel, w4, rw);

endmodule
