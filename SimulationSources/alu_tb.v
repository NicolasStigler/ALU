`timescale 1ns / 1ps

module alu_tb ();
  reg [31:0] a, b;
  reg [2:0] ALUControl;
  wire [31:0] Result;
  wire [3:0] ALUFlag;

  alu test(a, b, ALUControl, Result, ALUFlag);
  initial begin
    a=3;
    b=5;
    ALUControl=3'b000;
    #1
    a=5;
    b=5;
    ALUControl=3'b001;
    #1
    a=8;
    b=1;
    ALUControl=3'b010;
    #1
    a=5;
    b=7;
    ALUControl=3'b011;
    #1
    a=9;
    b=6;
    ALUControl=3'b110;
    #1
    $finish;
  end
endmodule