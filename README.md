# 🔢 Combinational Circuits

This directory contains RTL implementations of fundamental **combinational logic circuits** using **Verilog HDL**. Each design includes:

- ✅ Dataflow model
- ✅ Structural model
- ✅ Behavioral model
- 🧪 Testbench for simulation

These modules do **not use clock signals**, and the output depends only on the current inputs.

---



## 📚 Included Modules

| Circuit Name            | Description                      |
|-------------------------|----------------------------------|
| `mux/`                  | 2:1 Multiplexer                  |
| `decoder/`              | 3-to-8 Decoder                   |
| `encoder/`              | 8-to-3 Encoder                   |
| `full_adder/`           | Adds 3 input bits                |
| `half_subtractor/`      | Subtracts 2 bits                 |
| `full_subtractor/`      | Subtracts 3 bits                 |
| `comparator/`           | Compares 2-bit inputs            |
| `even_parity_generator/`| 4 bit even parity generator |

---

## ▶️ How to Simulate

Use your preferred simulator (Vivado, Icarus Verilog, ModelSim, etc.)

### Example with Icarus Verilog

```bash
cd combinational/mux
iverilog -o mux_tb muxdf.v muxtb.v
vvp mux_tb

