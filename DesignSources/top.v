`timescale 1ns / 1ps

module top (
  input [4:0] a, b,
  input [1:0] bshift,
  input lorr,
  input [2:0] ALUControl,
  output [4:0] Result,
  output wire [3:0] ALUFlag
);
  wire [4:0] shifted_a;

  shift shift0 (a, bshift, lorr, shifted_a);
  alu alu0 (shifted_a, b, ALUControl, Result, ALUFlag);

endmodule
