```markdown
# 🚂 RetroRun – 8086 Automatic Railway Gate Simulation

**RetroRun** is a real-time simulation of an automatic railway gate system written entirely in **8086 Assembly Language**. It features animated train movement using ASCII art, automatic gate operations, and signal control based on the train’s position — all in a classic DOS environment.

---

## 📌 Project Overview

This Assembly Language project simulates:
- A train approaching and passing a railway crossing
- Automatic opening and closing of gates
- Signal transitions (Red/Green) for both vehicles and trains
- Bell sound when the train arrives
- Interactive quit option via keyboard input

---

## 📁 File Structure

```

retrorun/
├── retrorun.asm   ; Main assembly source code
├── README.md      ; Project documentation

````

---

## 🖥️ Features

- 🚆 Animated ASCII train movement from right to left
- 🚦 Signal lights for both vehicles and trains (RED/GREEN)
- 🚧 Gate messages update dynamically (`----CLOSE-----` / `----OPEN-----`)
- 🔔 Bell sound using ASCII beep (`int 21h`)
- ⌨️ Press `'q'` to exit the simulation gracefully

---

## 🛠 Requirements

- DOS Emulator like **EMU8086**, **DOSBox**, or **VirtualBox with DOS**
- Assembler: **EMU8086 IDE**, **TASM**, or **MASM**

---

## ▶️ How to Run

### Using EMU8086:
1. Open `retrorun.asm` in EMU8086.
2. Click **Compile and Run**.

### Using TASM:
```bash
tasm retrorun.asm
tlink retrorun.obj
retrorun.exe
````

---

## 📊 Output Preview

```
   oooOOOOOO"
  o   ____       :::::::: _|--|_
  Y_,_|[]| --+++ |[][][]| | [] |
 {|_|_|__|;|___|;|______|;|____|;
  /oo--OO   o o   oo  oo   o  o
```

```
GATE: ----CLOSE-----
Vehicle Signal: ----RED----
Train Signal  : ----GREEN----
```

After train passes:

```
GATE: ----OPEN-----
Vehicle Signal: ----GREEN----
Train Signal  : ----RED----
```

---

## 💡 Learning Outcomes

This project helped reinforce key concepts in low-level programming:

* Screen control using **BIOS interrupts** (`int 10h`)
* I/O handling using **DOS interrupts** (`int 21h`)
* Memory segmentation using `cs`, `ds`, `ss`
* Stack setup and hardware-level animation
* Real-world simulation modeling in Assembly

---

## 🚄 Inspired By

> **Vande Bharat Express** – India’s fastest train (as of 2025), covering \~13.35 km in just 5 minutes.
> This simulation models a simplified version of such train crossings.

---

## 👨‍💻 Author

**Arun R.**
M.Sc. Software Systems
[GitHub Profile](https://github.com/arunrdev)

---

## 📃 License

This project is for educational use and personal learning. No license required for usage or modifications.

```

Let me know if you'd like a `LICENSE` file, `.gif` of the simulation, or GitHub Pages deployment too!
```
