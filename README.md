# Digital-Integrated-Circuits-VLSI-ASIC-Digital-Design
---
Assignment for the "Large Scaled Digital Integrated Circuits – VLSI & ASIC Digital Design Project" Course
Faculty of Engineering, AUTh
School of Electrical and Computer Engineering
Electronics and Computers Department

📚 Course: Digital Integrated Circuits – VLSI & ASIC Digital Design Project
🏛️ Faculty: AUTh - School of Electrical and Computer Engineering
📅 Semester: 9th Semester, 2024–2025

---

## 📑 Table of Contents
1. [Project Overview](#-project-overview)
2. [Project Details](#-project-details)
3. [Tools & Technologies](#-tools--technologies)
4. [Design Flow](#-design-flow)
5. [Key Features](#-key-features)
6. [Results & Metrics](#-results--metrics)
7. [Repository Structure](#-repository-structure)
8. [Reflections & Learning Outcomes](#-reflections--learning-outcomes)
9. [References](#-references)

---

## 📋 Project Overview

This project was developed as part of the **Digital Integrated Circuits – VLSI & ASIC Digital Design** course in the final year of my Electrical and Computer Engineering studies. The goal of the project is to design, verify, and implement a digital circuit using a complete **ASIC design flow**, from behavioral description to synthesis, physical design, and verification.

Key objectives include:
- Applying the theoretical principles of CMOS digital design.
- Gaining practical experience in **RTL design**, **logic synthesis**, **gate-level simulation**, and **layout implementation**.
- Understanding the challenges of real-world ASIC design such as timing closure, area optimization, and power constraints.

---

## 📊 Results & Metrics

| Metric             | Value                          |
|-------------------|--------------------------------|
| Core Area          | *** (to be filled)            |
| Max Frequency      | *** MHz (post-layout timing)  |
| Power Consumption  | *** mW                        |
| Gate Count         | *** gates                     |

---

## 📂 Repository Structure

| Folder / File                        | Description                                      |
|-------------------------------------|--------------------------------------------------|
| `Exercise1/`                         | Files and code for Exercise 1                    |
| `Exercise10/`                        | Files and code for Exercise 10                   |
| `Exercises_Reports/`                 | Reports and documentation for exercises          |
| `Exercise_1_Step_4_Constraints.sdc`  | Constraint file for synthesis and timing analysis|
| `Report_Deirmentzoglou_Ioannis_10015.pdf` | Final project report PDF                    |
| `README.md`                          | This README file                                 |

---


## ⚙️ Project Details

### 📝 Project Title
**Design and Implementation of a Custom RISC-V Processor Core**

### 🎯 Objectives
- Develop a **custom 32-bit RISC-V processor core** at RTL level using Verilog/SystemVerilog.
- Perform **logic synthesis** targeting a standard cell library.
- Run **gate-level simulations** to verify functional equivalence.
- Generate the **layout** using place-and-route tools.
- Evaluate key design metrics: area, timing, and power.

---

## 🛠️ Tools & Technologies

| Tool               | Purpose                         |
|-------------------|--------------------------------|
| Verilog / SystemVerilog | RTL Design                |
| Synopsys Design Compiler / Cadence Genus | Logic Synthesis |
| ModelSim / VCS     | Functional & Gate-Level Simulation |
| Cadence Innovus / Synopsys IC Compiler | Physical Design (P&R) |
| Python / Bash      | Automation scripts             |
| GTKWave            | Waveform Analysis              |

---

## 🚀 Design Flow

1. **Specification**: Define instruction set, pipeline stages, datapath and control logic.
2. **RTL Design**: Implement modules including ALU, register file, control unit, memory interface.
3. **RTL Simulation**: Verify functionality using simulation testbenches.
4. **Synthesis**: Synthesize RTL code to gate-level netlist using target technology library.
5. **Gate-Level Simulation**: Validate synthesized netlist with back-annotated delays.
6. **Floorplanning & Placement**: Define chip area, IO pads, standard cell placement.
7. **Routing**: Perform global and detailed routing to connect all placed cells.
8. **DRC & LVS Checks**: Ensure layout correctness with design rule and layout-vs-schematic checks.
9. **Signoff & Reports**: Analyze final reports (area, timing, power).

---

## 📝 Key Features

✅ **Fully compliant with RISC-V RV32I instruction set**  
✅ **Five-stage pipeline architecture (IF, ID, EX, MEM, WB)**  
✅ **Hazard detection and forwarding units**  
✅ **Support for external memory interface**  
✅ **Synchronous reset and parameterizable datapath width**  

---

## 📊 Results & Metrics

| Metric             | Value                          |
|-------------------|--------------------------------|
| Core Area          | *** (to be filled)            |
| Max Frequency      | *** MHz (post-layout timing)  |
| Power Consumption  | *** mW                        |
| Gate Count         | *** gates                     |

---

## 💬 Reflections & Learning Outcomes

Through this project, I gained hands-on experience with the complete ASIC design process, bridging theoretical knowledge of digital circuits with industry-standard design tools. I developed a deeper understanding of:
- Trade-offs between area, timing, and power.
- Critical path analysis and timing optimization.
- Importance of early verification at RTL and gate-level stages.
- Integration of synthesis constraints and physical design rules.

---

## 📚 References

- **RISC-V Specifications:** https://riscv.org/specifications/
- **CMOS VLSI Design (Weste & Harris)**
- Lecture notes and provided course materials.

---
