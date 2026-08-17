# 4:1 Multiplexer

## Description

A 4:1 Multiplexer selects one of four input signals based on two select lines and produces the selected input at the output.

## Features

* 4 input lines: I0, I1, I2, I3
* 2 select lines: S1, S0
* 1 output: Y
* Designed using Verilog HDL

## Truth Table

| S1 | S0 | Output Y |
| -- | -- | -------- |
| 0  | 0  | I0       |
| 0  | 1  | I1       |
| 1  | 0  | I2       |
| 1  | 1  | I3       |

## Files

* `multiplexer.v` – Verilog design code
* `multiplexer_tb.v` – Testbench
* `expected_output.txt` – Expected simulation output

## Simulation

The design can be simulated using tools such as **Icarus Verilog**, **ModelSim**, or **Vivado**.

## Author

Udayasree
