module mux16_1_st(in,s,y);
input [15:0] in;
input [3:0] s;
output y;
wire [3:0] t;
// First stage uses lower 2 bits [1:0]
mux4_1_st mux_4_st_1(in[3:0],s[1:0],t[0]);
mux4_1_st mux_4_st_2(in[7:4],s[1:0],t[1]);
mux4_1_st mux_4_st_3(in[11:8],s[1:0],t[2]);
mux4_1_st mux_4_st_4(in[15:12],s[1:0],t[3]);
// Final stage uses upper 2 bits [3:2]
mux4_1_st mux_4_st_5(t,s[3:2],y);
endmodule
