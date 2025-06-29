```markdown
# RetroRun: 8086 Automatic Railway Gate Simulation

RetroRun is a physics-inspired 2D platformer simulation project developed using **8086 Assembly Language**, focusing on real-time hardware-level interaction and modular game system logic. It emulates the behavior of an **automatic railway gate system**, showcasing the synergy between embedded systems and microprocessor programming.

## 📌 Project Objective

To simulate an automatic railway gate system using the 8086 microprocessor, enabling students and enthusiasts to understand low-level programming, control systems, and real-time interfacing concepts in a retro, game-like visualization.

## ⚙️ Technologies Used

- **8086 Assembly Language**
- **EMU8086 Emulator**
- **Modular Subroutine-Based Design**
- **Low-Level I/O Handling**
- **Simple Graphics Using ASCII/Pixel Simulation**
- **Basic Physics Logic for Gate Mechanism**

## 🧠 Key Features

- 🚦 **Train Detection System**  
  Simulates sensor input for detecting approaching and leaving trains.

- 🚧 **Automatic Gate Control**  
  Opens and closes the gate automatically based on train proximity.

- ⌛ **Delay and Timing Logic**  
  Implements accurate delay subroutines to mimic real-world railway operations.

- 📊 **Textual Animation & Output**  
  Displays simulation status using ASCII characters in EMU8086 output window.

- 🔁 **Looped Execution with Exit Option**  
  Runs continuously until the user exits, replicating real-time embedded operation.

## 🧩 Project Structure

```

RetroRun/
├── gate\_simulation.asm         # Main program file for gate logic
├── train\_logic.asm             # Handles train movement and detection
├── io\_subroutines.asm          # Modular I/O and delay routines
├── README.md                   # Documentation file (this one)
└── RetroRun\_Diagram.png        # Visual diagram (optional)

```

## 🚀 How to Run

1. Download and install [EMU8086](https://emu8086-microprocessor-emulator.software.informer.com/).
2. Open `gate_simulation.asm` in EMU8086.
3. Assemble and run the program.
4. Watch the simulation in the output window.

## 📚 Concepts Practiced

- Memory addressing and segment-offset model
- I/O port communication simulation
- Delay loops using register manipulation
- ASCII-based animations
- Modular code structure in Assembly

## 🔍 Example Output

```

Train Incoming... 🚂
Closing Gate...  🚧
Train Passing...
Opening Gate...  ✅

```

## 🎓 What I Learned

- Low-level programming and register management
- System timing using software delays
- How real-world systems like railway gates can be simulated using simple logic
- Modular design and reusable subroutines in Assembly

## 🙌 Contributors

- **Arun R.** – Developer and Designer  
  M.Sc. Software Systems, Coimbatore Institute of Technology

## 📄 License

This project is for educational purposes only. Feel free to use, modify, or enhance it.

---

> “RetroRun is not just a simulation, but a nostalgic step into how microprocessors controlled the world, one gate at a time.”
```
