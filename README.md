# FPGA-Research-Adder

PROJECT DESCRIPTION
-------------------
This project implements a hardware-accelerated vector adder designed in Vitis 
HLS and deployed on the Digilent ZedBoard (Zynq-7000 SoC, device xc7z020-clg400-1) 
using Vivado. The design operates in a pure hardware flow, mapping digital input 
signals directly from physical switches to output LEDs.

Repository Structure:
  - hls/
      - testsource.cpp    : C++ top-level HLS source file (adder logic)
      - adder.h           : Header file containing function declarations
  - vivado/
      - constraints.xdc   : Physical FPGA pin constraints (Switches/LEDs)
      - design_1_wrapper.bit : Compiled FPGA hardware bitstream file
  - README.txt            : Project documentation


DESIGN METHODOLOGY
------------------
1. High-Level Synthesis (Vitis HLS):
   - Written in C++ targeting direct pin control 
   - Synthesized from C++ source into Register-Transfer Level (RTL) logic.
   - Packaged as a standalone IP block core for Vivado integration.

2. Hardware Integration & Constraints (Vivado):
   - Instantiated the custom HLS IP core inside Vivado IP Integrator.
   - Applied physical pin mappings (.xdc constraints file) to bind input ports 
     (sw0, sw1) and output ports (led) directly to ZedBoard headers.
   - Generated top-level HDL wrapper and synthesized the complete hardware 
     bitstream (.bit).

IMPLEMENTATION
--------------
- Target Hardware: Digilent ZedBoard (xc7z020-clg400-1)
- Top Function: adder_led
- Hardware Mapping:
    * sw0 (Switch 0) -> Input signal 0
    * sw1 (Switch 1) -> Input signal 1
    * led (LED 0-2)  -> Bitwise output array

INSTRUCTIONS
------------
https://docs.google.com/presentation/d/13RR5XTaTDKagcqTm9v9QcvS28aSM1jBVsCQ4opdN1rY/edit?usp=sharing
