module bt(inb, rwb, selb, outb);

  input [7:0]inb;
  input selb;
  input rwb;
  output [7:0]outb;

  // module bc(in, rw, sel, out);
  bc clm0(.out(outb[0]), .in(inb[0]), .rw(rwb), .sel(selb));
  bc clm1(.out(outb[1]), .in(inb[1]), .rw(rwb), .sel(selb));
  bc clm2(.out(outb[2]), .in(inb[2]), .rw(rwb), .sel(selb));
  bc clm3(.out(outb[3]), .in(inb[3]), .rw(rwb), .sel(selb));
  bc clm4(.out(outb[4]), .in(inb[4]), .rw(rwb), .sel(selb));
  bc clm5(.out(outb[5]), .in(inb[5]), .rw(rwb), .sel(selb));
  bc clm6(.out(outb[6]), .in(inb[6]), .rw(rwb), .sel(selb));
  bc clm7(.out(outb[7]), .in(inb[7]), .rw(rwb), .sel(selb));

endmodule
