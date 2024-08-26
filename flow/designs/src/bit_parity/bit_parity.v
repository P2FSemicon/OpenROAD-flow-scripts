module bit_parity (D, Pin, Pout);
input D, Pin;
output Pout;
wire Pout;
XOR2_X1 G1(.A(D), .B(Pin), .Z(Pout));
//XOR2_X1 G2(.A(D1), .B(Pout1), .Z(Pout));
endmodule

