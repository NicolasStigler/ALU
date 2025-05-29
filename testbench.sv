module test();
  reg [31:0] a, b;
  reg [1:0] ALUControl;
  wire [31:0] Result;
  wire [3:0] ALUFlag;

  alu test(a, b, ALUControl, Result, ALUFlags);
  initial begin
    a=1;
    b=1;
    ALUControl=2'b00;
    #1
    a=1;
    b=1;
    ALUControl=2'b01;
    #1
    a=1;
    b=1;
    ALUControl=2'b01;
  end
  initial begin
    $dumpfile("t.vcd");
    $dumpvars;
  end
endmodule
