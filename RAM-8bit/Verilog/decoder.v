module decoder(id, od);

  input [2:0]id;
  output [7:0]od;
  and a0(od[0], ~id[0], ~id[1], ~id[2]);
  and a1(od[1], ~id[0], ~id[1], id[2]);
  and a2(od[2], ~id[0], id[1], ~id[2]);
  and a3(od[3], ~id[0], id[1], id[2]);
  and a4(od[4], id[0], ~id[1], ~id[2]);
  and a5(od[5], id[0], ~id[1], id[2]);
  and a6(od[6], id[0], id[1], ~id[2]);
  and a7(od[7], id[0], id[1], id[2]);

endmodule
