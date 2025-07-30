# RetroRun - 8086 Automatic Railway Gate Simulation

**RetroRun** is a physics-inspired 2D platformer simulation project developed using **8086 Assembly Language**, focusing on real-time hardware-level interaction and modular game system logic. It emulates the behavior of an **automatic railway gate system**, demonstrating the synergy between embedded systems and microprocessor programming.

---

## Project Objective

To simulate an automatic railway gate system using the 8086 microprocessor, enabling students and enthusiasts to understand low-level programming, control systems, and real-time interfacing concepts through a game-like visualization.

---

> “RetroRun is not just a simulation, but a nostalgic step into how microprocessors controlled the world, one gate at a time.”

[Project Demo Website](https://arun-r-007.github.io/RetroRun/)

---

## Demo Screenshot

![Demo Image](https://github.com/user-attachments/assets/d195dcde-4a43-48d4-856a-0754400ee482)

---

## Technologies Used

* 8086 Assembly Language
* EMU8086 Emulator
* Modular Subroutine-Based Design
* Low-Level I/O Handling
* Simple Graphics via ASCII or Pixel Simulation
* Physics Logic for Gate Mechanism

---

## Key Features

* **Train Detection System**
  Simulates sensor input for detecting approaching and leaving trains.

* **Automatic Gate Control**
  Automates gate operations based on train proximity.

* **Delay and Timing Logic**
  Implements software-based delays to simulate real-world timing.

* **Text-Based Animation and Output**
  Displays simulation status using ASCII characters in the EMU8086 output window.

* **Looped Execution with Exit Option**
  Continuously runs the simulation to emulate real-time operation until user exits.

---

## Project Structure

```
RetroRun/
├── gate_simulation.asm       # Main logic for gate control
├── train_logic.asm           # Handles train motion and detection
├── io_subroutines.asm        # I/O operations and delay routines
├── README.md                 # Documentation file
└── RetroRun_Diagram.png      # Optional visual diagram
```

---

## How to Run

1. Download and install [EMU8086](https://emu8086-microprocessor-emulator.software.informer.com/).
2. Open `gate_simulation.asm` in the EMU8086 IDE.
3. Assemble and run the program.
4. View the simulation through the emulator's output window.

---

## Concepts Practiced

* Memory addressing and the segment-offset memory model
* Simulation of I/O port communication
* Delay loops using register manipulation
* ASCII-based output and simple animations
* Modular and maintainable assembly code

---

## Example Output

```
Train Incoming...
Closing Gate...
Train Passing...
Opening Gate...
```

---

## What I Learned

* Fundamentals of low-level assembly programming and register operations
* Software-based timing techniques
* Real-world simulation of embedded systems
* Best practices in writing modular and reusable assembly code
