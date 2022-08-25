module dflipflop(data, clk, qata);

  input data, clk;
  output qata;

  wire w1, w2, w3, w4, w5, w6;
  nand a1(w1, w2, w4);
  nand a2(w2, w1, clk);
  nand a3(w3, w2, clk, w4);
  nand a4(w4, w3, data);
  nand a5(qata, w2, w6);
  nand a6(w6, w3, qata);

endmodule
