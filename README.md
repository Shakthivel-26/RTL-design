# ⏱️ Sequential Circuits

This directory contains RTL implementations of **sequential logic circuits** in **Verilog HDL**.  
Unlike combinational circuits, sequential circuits use **memory elements** (flip-flops, latches) and their output depends on both current inputs and previous states.

---


---

## 📚 Planned & Existing Modules

| Circuit Name          | Description                                           |
|-----------------------|-------------------------------------------------------|
| `dff/`                | D Flip-Flop (positive edge triggered)                 |
| `jkff/`               | JK Flip-Flop                                          |
| `tff/`                | T (Toggle) Flip-Flop                                  |
| `srff/`               | SR Flip-Flop                                          |
| `d_latch/`            | D Latch                                               |
| `shift_register/`     | 4-bit Shift Register (SISO, SIPO, PISO, PIPO)          |
| `counter_sync/`       | 4-bit Synchronous Counter                             |
| `counter_async/`      | 4-bit Asynchronous Counter                            |
| `ring_counter/`       | Ring Counter                                          |
| `johnson_counter/`    | Johnson Counter                                       |
| `fsm_example/`        | Simple FSM inside sequential design                   |

---

## ▶️ How to Simulate

You can simulate using **Vivado**, **ModelSim**, or **Icarus Verilog**.

### Example with Icarus Verilog
```bash
cd sequential/dff
iverilog -o dff_tb dff_df.v dff_tb.v
vvp dff_tb

