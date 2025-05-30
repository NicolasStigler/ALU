`timescale 1ns / 1ps

module shift (
  input [4:0] a,
  input [1:0] bshift,
  input lorr,
  output [4:0] shifted_a
);
  assign shifted_a = lorr ? a >> bshift : a << bshift;
endmodule
