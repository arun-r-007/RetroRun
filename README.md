```markdown
# 🚦 RetroRun: 8086 Automatic Railway Gate

This project simulates an **Automatic Railway Gate Control System** using **8086 Assembly Language**. Designed as part of a microprocessor academic project, it showcases how real-time automation systems can be implemented using low-level hardware programming.

## 📌 Project Description

**RetroRun** is a physics-inspired 2D gate simulation written in **8086 assembly**, simulating the control logic of a railway crossing gate. The gate opens or closes based on the simulated presence of a train, using a modular and structured assembly code design.

This project helps understand:
- Real-time control in embedded systems
- I/O operations in 8086
- Delay logic and polling
- Modular code structure in assembly

---

## ⚙️ Tools Used

| Tool      | Purpose                         |
|-----------|---------------------------------|
| [EMU8086](http://www.emu8086.com/) | To debug and simulate step-by-step assembly code |
| [DOSBox](https://www.dosbox.com/) | To run the `.COM` or `.EXE` file faster and simulate real-time behavior |
| Windows PC | Compatible with 16-bit emulation through DOSBox or EMU8086 |

---

## 🚀 How to Run

### ▶️ Using DOSBox
1. Compile the program in EMU8086 to generate a `.COM` or `.EXE` file.
2. Mount the directory in DOSBox:
   ```bash
    mount d d:\8086
    d:
    masm RetroRun.asm
    link RetroRun.obj
    RetroRun.exe
````

3. The program will run at a realistic speed inside DOSBox.

### 🐞 Using EMU8086

1. Open the `.asm` file in EMU8086.
2. Use **Compile and Emulate** to debug and run line-by-line.
3. Useful for analyzing registers, flags, memory usage, and logic flow.

---

## 📷 Screenshots

> ![Screenshot]("C:\Users\Asus\Pictures\Screenshots\Screenshot 2025-06-28 162749.png")

---

## 📚 Topics Covered

* Assembly Programming with 8086
* Hardware-level I/O logic simulation
* Delay loops and real-time polling
* Modular software design in low-level languages
* Debugging and speed optimization via DOSBox

---