# Johnson Counter

A collection of **VHDL-based digital logic designs** demonstrating combinational circuits and basic storage elements. This project includes multiplexers, decoders, encoders, and a Johnson counter, all designed, compiled, and simulated using Intel Quartus.

## Overview
This project focuses on implementing and verifying **fundamental digital logic components** using VHDL and schematic-based design. Multiple independent designs are created and later reused as symbols to build more complex circuits.

The designs include:
- Pure combinational logic (MUX, decoder, encoder)
- A sequential circuit using basic storage elements (Johnson counter)
- Hierarchical design using symbol reuse
- Error handling for non-valid states with an **“E”** output on a seven-segment display

A random **9-digit number** (e.g., `742918305`) is used for demonstration purposes. The **last six digits** of this number (`918305`) are displayed cyclically using the Johnson counter.

## Features
- VHDL implementation of core digital circuits
- 2:1 and 4:1 multiplexers
- 2:4 and 3:8 decoders
- Binary encoder
- Johnson counter with cyclic output
- Hierarchical schematic design using reusable symbols
- Seven-segment display output
- Invalid state detection with error display
- Fully compiled and simulated in Quartus

## Modules
- **Multiplexer (mux)**
  - 2:1 multiplexer (VHDL)
  - 4:1 multiplexer built hierarchically from 2:1 MUX blocks
- **Decoder (decode)**
  - 2:4 decoder
  - 3:8 decoder built hierarchically from 2:4 decoder blocks
- **Encoder (encod)**
  - Binary encoder 
- **Johnson Counter (johns)**
  - Sequential circuit using flip-flops
  - Displays the last six digits of the 9-digit number cyclically
  - Includes internal register feedback and truth table verification
