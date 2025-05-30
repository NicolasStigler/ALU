`timescale 1ns / 1ps

module tc(
  input [4:0] a,
  output [4:0] twocomp
);

assign twocomp[0] = a[0];
assign twocomp[1] = a[0] ^ a[1];
assign twocomp[2] = (a[0] | a[1]) ^ a[2];
assign twocomp[3] = ((a[0] | a[1]) | a[2]) ^ a[3];
assign twocomp[4] = ~((((a[0] | a[1]) | a[2]) | a[3]) ^ a[4]);

endmodule
