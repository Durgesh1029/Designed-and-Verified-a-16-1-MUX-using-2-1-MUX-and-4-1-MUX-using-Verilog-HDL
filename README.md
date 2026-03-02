
# 📌 Structural Design of 16:1 Multiplexer (Verilog HDL)
---

## 📌 Project Overview

This project focuses on a **structural design of multiplexers** using Verilog HDL.

- Designed a structural model of **2:1 MUX**
- Used 3 instances of **2:1 MUX to build a 4:1 MUX**
- Used 5 instances of **4:1 MUX to build a 16:1 MUX**
- In total, **15 instances of 2:1 MUX** are used in the final 16:1 MUX

👉 Learn how multiplexers work and structural modeling:
📺 https://youtu.be/mWxA-gOuqS0?si=0qVw2keEtLz2TW6Z  
📺 https://youtu.be/_nd77x1ooGQ?si=RtIuzbpTEAgq4Gkz

---

## 🛠️ Key Features

- 🔹 Designed a 2:1 Multiplexer structural model
- 🔹 Reused and instantiated modules to build larger MUX designs
- 🔹 Constructed 4:1 MUX using three 2:1 MUX modules
- 🔹 Built a 16:1 MUX using five 4:1 MUX modules (structural)
- 🔹 Total of 15 2:1 MUX blocks used
- 🔹 Implemented a testbench to verify correct functionality
- 🔹 Verified performance across all input combinations

---

## ⚙️ Functional Description

### Hierarchical Design:

- **2:1 MUX**
  - Base structural module
- **4:1 MUX**
  - Created by initializing 2:1 MUX three times
- **16:1 MUX**
  - Built by initializing 4:1 MUX five times

---

## 📌 Behavioral Verification

- Developed a **testbench** to ensure the **16:1 MUX** operates correctly
- Covered all combinations of inputs and select lines
- Verified outputs reflect correct multiplexing behavior

---

## 🧠 Design Approach

- Applied **structural modeling in Verilog**
- Used basic modules and reuse logic (hierarchical instantiation)
- Ensured modularity and scalability
- Verified correctness using simulation

---

## 📂 Files Included

- `mux2to1.v` → 2:1 MUX structural model  
- `mux4to1.v` → 4:1 MUX (instantiated 2:1 MUX modules)  
- `mux16to1.v` → 16:1 MUX (instantiated 4:1 MUX modules)  
- `testbench.v` → Testbench for 16:1 MUX verification  
- `waveform.png` → Simulation results

---

## 🚀 Applications

- Digital Systems (Data Routing)
- FPGA/ASIC Design Practice
- Combinational Logic Learning
- Structural Modeling Techniques

---

## 👨‍💻 Author

Durgesh Dongre
-Designed and implemented as part of Verilog HDL and Digital Logic Design coursework.

