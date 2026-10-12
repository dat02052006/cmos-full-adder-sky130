# CMOS Full Adder Design and Optimization Using SKY130 PDK

## Overview

This project focuses on the transistor-level design, simulation, layout implementation, and optimization of a 1-bit CMOS Full Adder using the SKY130 open-source PDK.

Two CMOS logic architectures are implemented and compared to evaluate power, performance, area, and robustness under PVT variations.

## Architectures

1. Static Complementary CMOS
2. Transmission-Gate / Pass-Transistor Logic

## Objectives

- Design and verify 1-bit Full Adder circuits at the transistor level.
- Optimize NMOS and PMOS transistor sizing (W/L).
- Implement physical layouts and perform DRC/LVS verification.
- Evaluate performance across process, voltage, and temperature variations.
- Compare transistor count, area, propagation delay, power, and PDP.
- Optionally implement a 4-bit Ripple Carry Adder and evaluate the critical carry path.

## Tools

- **PDK:** SKY130
- **Schematic:** Xschem
- **Simulation:** ngspice
- **Layout:** Magic
- **Verification:** Magic / Netgen

## Evaluation Metrics

| Metric | Description |
|---|---|
| Transistor Count | Total number of MOS transistors |
| Area | Physical layout area |
| Delay | Propagation delay |
| Power | Average power consumption |
| PDP | Power-Delay Product |
| PVT | Performance variation across operating conditions |

## Project Status

In progress.

## License

To be determined.
