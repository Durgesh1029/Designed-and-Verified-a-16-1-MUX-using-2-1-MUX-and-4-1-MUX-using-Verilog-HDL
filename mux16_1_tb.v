module mux16_1_tb;
reg[15:0] data_in;
reg[3:0] sel;
wire mux_out;

mux16_1_st MUX1(
  .in(data_in),
  .s(sel),
  .y(mux_out)
  );

initial begin
  data_in=16'b0000_0000_0000_0000;
  sel = 4'b0;
  #10 data_in = 16'b0000_0000_0000_0001;sel = 4'b0000;
  #10 data_in = 16'b0000_0000_0000_0010;sel = 4'b0001;
  #10 data_in = 16'b0000_0000_0000_0100;sel = 4'b0010;
  #10 data_in = 16'b0000_0000_0000_1000;sel = 4'b0011;
  #10 data_in = 16'b0000_0000_0001_0000;sel = 4'b0100;
  #10 data_in = 16'b0000_0000_0010_0000;sel = 4'b0101;
  #10 data_in = 16'b0000_0000_0100_0000;sel = 4'b0110;
  #10 data_in = 16'b0000_0000_1000_0000;sel = 4'b0111;
  #10 data_in = 16'b0000_0001_0000_0000;sel = 4'b1000;
  #10 data_in = 16'b0000_0010_0000_0000;sel = 4'b1001;
  #10 data_in = 16'b0000_0100_0000_0000;sel = 4'b1010;
  #10 data_in = 16'b0000_1000_0000_0000;sel = 4'b1011;
  #10 data_in = 16'b0001_0000_0000_0000;sel = 4'b1100;  //one-hot inputs
  #10 data_in = 16'b0010_0000_0000_0000;sel = 4'b1101;
  #10 data_in = 16'b0100_0000_0000_0000;sel = 4'b1110;
  #10 data_in = 16'b1000_0000_0000_0000;sel = 4'b1111;
  #10 $finish;
 end
 
 initial begin
   $monitor("T=%0t | sel = %b | data_in = %b | y=%b", $time, sel, data_in,mux_out);
  end
endmodule
