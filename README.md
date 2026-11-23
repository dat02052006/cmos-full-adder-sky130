# Design, Optimization, and Evaluation of a 1-Bit CMOS Full Adder (SKY130 PDK)

This project presents the transistor-level schematic design, physical layout, channel sizing ($W/L$) optimization, SPICE verification, and PVT variation analysis of a **1-bit Full Adder** implemented in the **SkyWater SKY130 130nm PDK** using an open-source EDA toolchain.

---

## 1. Repository Structure

```text
├── static_cmos/                  # Static Complementary CMOS Full Adder implementation
│   ├── schematic/                # Transistor-level schematics and symbols (.sch, .sym)
│   ├── layout/                   # Physical layouts and parasitic extraction netlists (.mag, .gds, _pex.spice)
│   ├── testbench/                # Functional, delay, power, and PVT testbenches
│   └── logicaleffort/            # Logical Effort calculations and transistor sizing scripts
│
├── transmission_gate/            # Transmission-Gate Full Adder (TGFA) implementation
│   ├── schematic/                # Transistor-level schematics (XOR, MUX21, Full Adder)
│   ├── layout/                   # Physical layouts and DRC/LVS/PEX verification files
│   ├── testbench/                # Simulation testbenches and PVT corner sweeps
│   └── logicaleffort/            # W/L sizing optimization based on Elmore Delay / Logical Effort
│
└── README.md                     # Project overview and evaluation report
```

---

## 2. EDA Toolchain

* **PDK:** SkyWater SKY130 (`sky130A` / `open_pdks`)
* **Schematic Capture:** Xschem
* **SPICE Simulation:** ngspice
* **Waveform Viewer:** Gaw / Python Matplotlib
* **Physical Layout & DRC:** Magic VLSI / KLayout
* **LVS (Layout vs. Schematic):** Netgen
* **PEX (Parasitic Extraction):** Magic PEX (`ext2spice`)

---

## 3. Circuit Architectures & Transistor Sizing ($W/L$) Rationale

### 3.1. Architecture 1: Static Complementary CMOS Full Adder
* **Topology:** Fully complementary pull-up (PMOS) and pull-down (NMOS) networks (Mirror Adder / Standard 28T–36T CMOS), ensuring full-swing rail-to-rail output ($0 \rightarrow V_{DD}$) and high noise margins.
* **Transistor Sizing ($W/L$):**
  * Minimum channel length: $L = 0.15\,\mu\text{m}$ (`sky130_fd_pr__nfet_01v8`, `sky130_fd_pr__pfet_01v8`).
  * Due to the carrier mobility ratio ($\mu_n / \mu_p \approx 2.5 - 3$), a sizing ratio of $W_p / W_n \approx [2.5]$ is selected for reference inverters to equalize rise and fall propagation delays ($t_{pLH} \approx t_{pHL}$).
  * **Logical Effort** methodology is applied to size stacked transistors along the critical carry chain ($C_{in} \rightarrow C_{out}$) to minimize effective on-resistance and propagation delay.

### 3.2. Architecture 2: Transmission-Gate Full Adder (TGFA)
* **Topology:** Utilizes complementary CMOS transmission gates (parallel NMOS and PMOS pairs) combined with inverters to build `XOR/XNOR` stages and `2:1 Multiplexers` generating `Sum` and `Cout`.
* **Transistor Sizing ($W/L$):**
  * Minimum channel length $L = 0.15\,\mu\text{m}$ is used across all devices.
  * Transistor widths ($W$) are optimized using the **Elmore Delay** model to balance the transmission gate on-resistance ($R_{on}$) against internal parasitic capacitances while preserving output driving strength.

| Cell / Circuit Stage | Static CMOS ($W_n / W_p$) | Transmission-Gate ($W_n / W_p$) | Notes |
| :--- | :---: | :---: | :--- |
| Reference Inverter | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | $L = 0.15\,\mu\text{m}$ |
| `Sum` Generation Stage | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | Symmetric transition sizing |
| `Cout` Generation Stage | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | Optimized carry path |

---

## 4. PVT (Process - Voltage - Temperature) Variation Analysis

Post-layout parasitic-extracted (PEX) netlists are verified across standard SKY130 operating corners:
* **Process Corners:** `tt` (Typical-Typical), `ff` (Fast-Fast), `ss` (Slow-Slow), `sf` (Slow-Fast), `fs` (Fast-Slow).
* **Supply Voltage ($V_{DD}$):** Nominal $1.8\,\text{V}$ with $\pm 10\%$ variation ($1.62\,\text{V}$ to $1.98\,\text{V}$).
* **Temperature ($T$):** Swept across $-40^\circ\text{C}$, $27^\circ\text{C}$ (nominal), and $125^\circ\text{C}$.

| PVT Corner | $V_{DD}$ (V) | Temp ($^\circ\text{C}$) | Static CMOS Delay (ps) | TGFA Delay (ps) | Static CMOS Power ($\mu\text{W}$) | TGFA Power ($\mu\text{W}$) |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **Typical (`tt`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Best Case (`ff`)** | `1.98` | `-40` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Worst Case (`ss`)** | `1.62` | `125` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Skewed (`sf`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Skewed (`fs`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |

---

## 5. Architecture Comparison Summary (Post-Layout)

Performance metrics evaluated at nominal operating conditions (`tt`, $V_{DD} = 1.8\,\text{V}$, $T = 27^\circ\text{C}$):

| Evaluation Metric | Static Complementary CMOS | Transmission-Gate (TGFA) | Remarks |
| :--- | :---: | :---: | :--- |
| **Transistor Count** | `[28 / 36]` T | `[...]` T | TGFA achieves lower device count |
| **Layout Area** | `[...]` $\mu\text{m}^2$ | `[...]` $\mu\text{m}^2$ | Bounding box ($W \times H$) in Magic VLSI |
| **Worst-Case Delay ($t_{pd}$)** | `[...]` ps | `[...]` ps | Measured from input to `Sum` / `Cout` |
| **Average Power ($P_{avg}$)** | `[...]` $\mu\text{W}$ | `[...]` $\mu\text{W}$ | Dynamic switching + static leakage power |
| **Power-Delay Product (PDP)** | `[...]` fJ | `[...]` fJ | $\text{PDP} = P_{avg} \times t_{pd}$ |
| **PVT Robustness** | High (Full-swing restoration, strong drive) | Moderate-to-High (Sensitive to cascaded load capacitance) | Static CMOS exhibits tighter delay spread |

---

## 6. Extension: 4-Bit Ripple Carry Adder (RCA)

Using the optimized 1-bit Full Adder macro cell, a **4-bit Ripple Carry Adder** is constructed by cascading four stages in series to evaluate multi-bit arithmetic performance:
* **Critical Carry Path:** $A_0 / B_0 / C_{in} \rightarrow C_{out,0} \rightarrow C_{out,1} \rightarrow C_{out,2} \rightarrow C_{out,3}$ (or $Sum_3$).
* **Post-Layout Simulation Results ($C_{in} \rightarrow C_{out,3}$ at `tt`, $1.8\,\text{V}$, $27^\circ\text{C}$):**
  * Worst-case carry propagation delay: `[...]` ps.
  * Estimated maximum operating frequency ($f_{max}$): `[...]` MHz.
  * Total 4-bit RCA average power consumption: `[...]` $\mu\text{W}$.

---

## 7. How to Run Simulations

1. Ensure `open_pdks` (SKY130) is installed and the `PDK_ROOT` environment variable is properly configured.
2. Open the schematic in Xschem:
   ```bash
   cd static_cmos/schematic   # or transmission_gate/schematic
   xschem fulladder.sch
   ```
3. Generate the SPICE netlist and run `ngspice` from the `testbench/` directory:
   ```bash
   cd ../testbench
   ngspice fa_tb_delay.spice
   ```
