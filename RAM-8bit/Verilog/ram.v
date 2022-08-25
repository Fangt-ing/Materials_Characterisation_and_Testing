module ram(ins, rws, addr, outs);

  input [7:0]ins;
  input [2:0]addr;
  input rws;
  output [7:0]outs;
  reg [7:0]rowout[0:7];
  wire [7:0]word;
  wire [15:0]halfout;

  //   bt(inb, rwb, selb, outb);
  decoder sel(.od(word), .id(addr));

  // module bt(inb[8], rwb, selb, outb[8]);
  bt row0(.outb(rowout[0]), .inb(ins), .rwb(rws), .selb(word[0]));
  bt row1(.outb(rowout[1]), .inb(ins), .rwb(rws), .selb(word[1]));
  bt row2(.outb(rowout[2]), .inb(ins), .rwb(rws), .selb(word[2]));
  bt row3(.outb(rowout[3]), .inb(ins), .rwb(rws), .selb(word[3]));
  bt row4(.outb(rowout[4]), .inb(ins), .rwb(rws), .selb(word[4]));
  bt row5(.outb(rowout[5]), .inb(ins), .rwb(rws), .selb(word[5]));
  bt row6(.outb(rowout[6]), .inb(ins), .rwb(rws), .selb(word[6]));
  bt row7(.outb(rowout[7]), .inb(ins), .rwb(rws), .selb(word[7]));

  //   or outbit0(outs[0], rowout[0][0], rowout[1][0], rowout[2][0], rowout[3][0],
  //              rowout[4][0], rowout[5][0], rowout[6][0], rowout[7][0]);
  // output bit 0
  or outh00(halfout[0],  rowout[0][0], rowout[1][0], rowout[2][0], rowout[3][0]);
  or outh01(halfout[1], rowout[4][0], rowout[5][0], rowout[6][0], rowout[7][0]);
  or outbit0(outs[0], halfout[0], halfout[1]);


  //   or outbit1(outs[1], rowout[0][1], rowout[1][1], rowout[2][1], rowout[3][1],
  //              rowout[4][1], rowout[5][1], rowout[6][1], rowout[7][1]);
  //   outout bit 1
  or outbit10(halfout[2], rowout[0][1], rowout[1][1], rowout[2][1], rowout[3][1]);
  or outbit11(halfout[3], rowout[4][1], rowout[5][1], rowout[6][1], rowout[7][1]);
  or outbit1(outs[1], halfout[2], halfout[3]);

  //   or outbit2(outs[2], rowout[0][2], rowout[1][2], rowout[2][2], rowout[3][2],
  //              rowout[4][2], rowout[5][2], rowout[6][2], rowout[7][2]);
  or outbit20(halfout[4], rowout[0][2], rowout[1][2], rowout[2][2], rowout[3][2]);
  or outbit21(halfout[5], rowout[4][2], rowout[5][2], rowout[6][2], rowout[7][2]);
  or boutbit2(outs[2], halfout[4], halfout[5]);


  //   or outbit3(outs[3], rowout[0][3], rowout[1][3], rowout[2][3], rowout[3][3],
  //              rowout[4][3], rowout[5][3], rowout[6][3], rowout[7][3]);
  or outbit30(halfout[6], rowout[0][3], rowout[1][3], rowout[2][3], rowout[3][3]);
  or outbit31(halfout[7], rowout[4][3], rowout[5][3], rowout[6][3], rowout[7][3]);
  or outbit3(outs[3], halfout[6], halfout[7]);

  //   or outbit4(outs[4], rowout[0][4], rowout[1][4], rowout[2][4], rowout[3][4],
  //              rowout[4][4], rowout[5][4], rowout[6][4], rowout[7][4]);
  or outbit40(halfout[8], rowout[0][4], rowout[1][4], rowout[2][4], rowout[3][4]);
  or outbit41(halfout[9], rowout[4][4], rowout[5][4], rowout[6][4], rowout[7][4]);
  or outbit4(outs[4], halfout[8], halfout[9]);

  //   or outbit5(outs[5], rowout[0][5], rowout[1][5], rowout[2][5], rowout[3][5],
  //              rowout[4][5], rowout[5][5], rowout[6][5], rowout[7][5]);
  or outbit50(halfout[10], rowout[0][5], rowout[1][5], rowout[2][5], rowout[3][5]);
  or outbit51(halfout[11], rowout[4][5], rowout[5][5], rowout[6][5], rowout[7][5]);
  or outbit5(outs[5], halfout[10], halfout[11]);


  //   or outbit6(outs[6], rowout[0][6], rowout[1][6], rowout[2][6], rowout[3][6],
  //              rowout[4][6], rowout[5][6], rowout[6][6], rowout[7][6]);
  or outbit60(halfout[12], rowout[0][6], rowout[1][6], rowout[2][6], rowout[3][6]);
  or outbit61(halfout[13], rowout[4][6], rowout[5][6], rowout[6][6], rowout[7][6]);
  or outbit6(outs[6], halfout[12], halfout[13]);


  //   or outbit7(outs[7], rowout[0][7], rowout[1][7], rowout[2][7], rowout[3][7],
  //              rowout[4][7], rowout[5][7], rowout[6][7], rowout[7][7]);
  or outbit70(halfout[14], rowout[0][7], rowout[1][7], rowout[2][7], rowout[3][7]);
  or outbit71(halfout[15], rowout[4][7], rowout[5][7], rowout[6][7], rowout[7][7]);
  or outbit7(outs[7], halfout[14], halfout[15]);

endmodule
