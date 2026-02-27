module mux4_1_st(in,s,y);
input [3:0] in;
input [1:0] s;
output y;
wire [1:0] t;
// First stage uses s[0]
mux2_1 mux2_1_1(in[1:0],s[0],t[0]);
mux2_1 mux2_1_2(in[3:2],s[0],t[1]);
// Second stage uses s[1]
mux2_1 mux2_1_3(t,s[1],y);
endmodule
