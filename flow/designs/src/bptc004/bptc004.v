// Filpflop at the input and Output

module bptc004 (D1, Pin, D2,clk, Pout1, Pout2);
input D1, Pin, D2, clk;
output Pout1, Pout2;

wire Pout1, Pout2,Pout1_int,Pout2_int,D1_d,D2_d,Pin_d;

// primary input having fanout > 1
DFF_X1 dff_inst1 (.D(D1), .CK(clk), .Q(D1_d), .QN());
DFF_X1 dff_inst2 (.D(Pin), .CK(clk), .Q(Pin_d), .QN());
DFF_X1 dff_inst3 (.D(D2), .CK(clk), .Q(D2_d), .QN());
XOR2_X1 G1(.A(D1_d), .B(Pin_d), .Z(Pout1_int));
XOR2_X1 G2(.A(Pin_d), .B(D2_d), .Z(Pout2_int));
DFF_X1 dff_inst4 (.D(Pout1_int), .CK(clk), .Q(Pout1), .QN());
DFF_X1 dff_inst5 (.D(Pout2_int), .CK(clk), .Q(Pout2), .QN());


endmodule
