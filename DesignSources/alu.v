`timescale 1ns / 1ps

module alu (
  input [4:0] a, b,  // [31:0] for 32 bit architecture (f32ba from now on)
  input [2:0] ALUControl,
  output reg [4:0] Result,  // [31:0] for 32 bit architecture
  output wire [3:0] ALUFlags
);

wire neg, zero, carry, overflow;
wire [4:0] condinvb;  // [31:0] f32ba
wire [5:0] sum;  // [32:0] f32ba, sum is 33 bits because carry bit is the 33th
wire [4:0] twocomp;  // signed result (2's complement -> signed binary)

assign condinvb = ALUControl[0] ? ~b : b;  // mux
assign sum = a + condinvb + ALUControl[0];  // a + b + cin
tc tc0 (a, twocomp);

always @(*) begin
  casex (ALUControl[2:0])
    3'b00?: Result = sum;
    3'b010: Result = a & b;
    3'b011: Result = a | b;
    3'b110: Result = a ^ b;
    3'b111: Result = twocomp;
  endcase
end

assign neg = Result[4];  // [31] f32ba
assign zero = (Result == 5'b0);  // 32'b0 f32ba
assign carry = (ALUControl[1] == 1'b0) & sum[5];  // sum[32] f32ba
assign overflow = ((ALUControl[1] == 1'b0) & ~(a[4] ^ b[4] ^ ALUControl[0]) & (a[4] ^ sum[4])) | ((ALUControl == 3'b111) & (twocomp[4] == 1'b0));  // a[31], b[31] f32ba
assign ALUFlags = {neg, zero, carry, overflow};

endmodule
