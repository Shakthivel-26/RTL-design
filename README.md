# 🌀 Finite State Machines (FSM)

This directory contains **Finite State Machine** (FSM) designs written in **Verilog HDL**.  
FSMs are sequential circuits where the output depends on the **current state** and **inputs**.  
They are widely used in control systems, protocols, and embedded applications.

---


---

## 📚 Planned & Existing FSM Modules

| FSM Name              | Type             | Description |
|-----------------------|------------------|-------------|
| `traffic_light/`      | Moore FSM        | Traffic light controller |
| `vending_machine/`    | Mealy FSM        | Vending machine change dispenser |
| `elevator_ctrl/`      | Moore FSM        | Elevator control logic |
| `sequence_detector/`  | Mealy/Moore FSM  | Detects specific bit sequence |
| `washing_machine/`    | Moore FSM        | Wash cycle automation |
| `uart_tx/`            | Mealy FSM        | UART transmitter control |
| `parking_system/`     | Moore FSM        | Automated parking gate |
| `password_lock/`      | Moore FSM        | Digital password lock |
| `railway_gate/`       | Moore FSM        | Railway crossing gate |
| `cpu_control_unit/`   | Mixed FSM        | Simplified CPU control unit |

---

## ▶️ How to Simulate

Example using **Icarus Verilog**:
```bash
cd fsm/traffic_light
iverilog -o traffic_tb traffic_light_behavioral.v traffic_light_tb.v
vvp traffic_tb
