# ALU in Verilog

## Overview
This project implements a simple ALU in verilog, designed to be tested on a Basys 3 FPGA board. The ALU supports basic arithmetic and logical operations, with additional functionality for bit shifting and two's complement conversion to signed binary.

![Basys3 image with i/o highlighted](https://github.com/NicolasStigler/ALU/blob/main/basys.png?raw=true)

## Features

### ALU Ops
The ALU supports the following operations:
- **Addition**: A + B
- **Subtraction**: A + (-B)
- **AND**: A & B
- **OR**: A | B
- **XOR**: A ^ B
- **Two's Complement to Signed Binary**: A(2C) -> A(Signed)

### Input Processing
- Input A can be shifted before the ALU operation
- The shift amount is controlled by `bshift` (2-bit value)
- Shift direction is determined by `lorr` (Left OR Right):
  - `lorr = 0`: Left shift
  - `lorr = 1`: Right shift

### Output Flags
The ALU generates status flags to indicate various conditions:
- Negative
- Zero
- Carry
- Overflow

## Hardware Implementation

This project is specifically designed for implementation on a **Basys 3 FPGA board**. All necessary constraints and pin mappings are included for direct deployment.

# Notation Prefix

C = ALUControl Bits
S = bShift Bits
LorR = Left or Right Switch
A = A Bits
B = B Bits
R = Result Bits
F = ALUFlags Bits (neg, zero, carry, overflow)

Thanks :3 don't forget to power on the board...
