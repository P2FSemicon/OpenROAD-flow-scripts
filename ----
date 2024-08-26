module fulladder (A,
    B,
    C,
    Carry,
    Clock,
    Scan_clk,
    Scan_en,
    Sum,
    cg_en,
    gen_clk_mux);
 input A;
 input B;
 input C;
 output Carry;
 input Clock;
 input Scan_clk;
 input Scan_en;
 output Sum;
 input cg_en;
 input gen_clk_mux;

 wire gated_clock;
 wire mux_clock;
 wire n10;
 wire n11;
 wire n12;
 wire n13;
 wire net1;
 wire n4;
 wire n5;
 wire n6;
 wire n7;
 wire n8;
 wire n9;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;

 TAPCELL_X1 PHY_EDGE_ROW_2_Right_2 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Right_1 ();
 TAPCELL_X1 PHY_EDGE_ROW_0_Right_0 ();
 XOR2_X1 G1 (.A(n4),
    .B(n5),
    .Z(n7));
 XOR2_X1 G2 (.A(n7),
    .B(n6),
    .Z(n8));
 AND2_X1 G3 (.A1(n5),
    .A2(n6),
    .ZN(n9));
 AND2_X1 G4 (.A1(n4),
    .A2(n5),
    .ZN(n10));
 AND2_X1 G5 (.A1(n4),
    .A2(n6),
    .ZN(n11));
 OR2_X1 G6 (.A1(n12),
    .A2(n11),
    .ZN(n13));
 OR2_X1 G7 (.A1(n9),
    .A2(n10),
    .ZN(n12));
 AND2_X1 gate (.A1(mux_clock),
    .A2(net5),
    .ZN(gated_clock));
 MUX2_X1 mux1 (.A(Clock),
    .B(Scan_clk),
    .S(net4),
    .Z(mux_clock));
 DFF_X1 reg1 (.D(net1),
    .CK(gated_clock),
    .Q(n4));
 DFF_X1 reg2 (.D(net2),
    .CK(gated_clock),
    .Q(n5));
 DFF_X1 reg3 (.D(net3),
    .CK(gated_clock),
    .Q(n6));
 DFF_X1 reg4 (.D(n13),
    .CK(gated_clock),
    .Q(net6));
 DFF_X1 reg5 (.D(n8),
    .CK(gated_clock),
    .Q(net7));
 TAPCELL_X1 PHY_EDGE_ROW_3_Right_3 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Right_4 ();
 TAPCELL_X1 PHY_EDGE_ROW_0_Left_5 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Left_6 ();
 TAPCELL_X1 PHY_EDGE_ROW_2_Left_7 ();
 TAPCELL_X1 PHY_EDGE_ROW_3_Left_8 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Left_9 ();
 BUF_X1 input1 (.A(A),
    .Z(net1));
 BUF_X1 input2 (.A(B),
    .Z(net2));
 BUF_X1 input3 (.A(C),
    .Z(net3));
 BUF_X1 input4 (.A(Scan_en),
    .Z(net4));
 BUF_X1 input5 (.A(cg_en),
    .Z(net5));
 BUF_X1 output6 (.A(net6),
    .Z(Carry));
 BUF_X1 output7 (.A(net7),
    .Z(Sum));
endmodule
