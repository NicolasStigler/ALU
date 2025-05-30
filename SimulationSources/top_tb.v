`timescale 1ns / 1ps

module top_tb ();
  reg [4:0] a, b;
  reg [1:0] bshift;
  reg lorr;
  reg [2:0] ALUControl;
  wire [4:0] Result;
  wire [3:0] ALUFlag;

  top test(a, b, bshift, lorr, ALUControl, Result, ALUFlag);
  initial begin
    a=3;
    b=5;
    bshift=0;
    lorr=0;
    ALUControl=3'b000;
    #1
    a=5;
    b=5;
    bshift=0;
    lorr=0;
    ALUControl=3'b001;
    #1
    a=8;
    b=1;
    bshift=0;
    lorr=0;
    ALUControl=3'b010;
    #1
    a=5;
    b=7;
    bshift=0;
    lorr=0;
    ALUControl=3'b011;
    #1
    a=9;
    b=6;
    bshift=0;
    lorr=0;
    ALUControl=3'b110;
    #1
    a=2;
    b=2;
    bshift=2;
    lorr=1;
    ALUControl=3'b000;
    #1
    a=2;
    b=2;
    bshift=2;
    lorr=0;
    ALUControl=3'b000;
    #1
    $finish;
  end
endmodule