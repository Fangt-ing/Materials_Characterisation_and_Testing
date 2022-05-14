module state(rwin, sclk, enable, datain, saddr, dataout);
  input sclk, enable, rwin;
  input [0:7]datain;
  input [2:0]saddr;
  output [7:0]dataout;
  wire ddata, dout, sout;

  dflipflop states(.qata(dout), .clk(sclk), .data(rwin));
  or dd(sout, dout, ~enable);
  and fsm(ddata, sout, enable);
  ram ss(.outs(dataout), .ins(datain), .rws(dout), .addr(saddr));

endmodule
