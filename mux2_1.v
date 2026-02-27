module mux2_1(i,s0,y);
input [1:0] i;
input s0;
output y;
wire t1,t2,t3;
not G1(t1,s0);
and G2(t2,t1,i[0]);
and G3(t3,s0,i[1]);
or G4(y,t2,t3);
endmodule


