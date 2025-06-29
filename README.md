RetroRun: 8086 Automatic Railway Gate Simulation
This repository contains the implementation of RetroRun, a text-based simulation of an automatic railway gate control system using 8086 Assembly Language. The project animates a moving train with ASCII art and simulates gate and signal operations based on the train’s position. It is designed to run in a DOS environment using BIOS and DOS interrupts.

Features
Animated ASCII Train Movement: The train moves from right to left across the screen using text-mode graphics.

Automatic Gate Control: Gates automatically close as the train approaches and open once it has passed.

Signal Management: Vehicle and train signals (RED/GREEN) change in sync with the train's position.

Sound Alert: A bell sound is triggered when the train arrives.

User Interaction: Press 'q' to exit the simulation at any time.

Components
8086 Assembly Language: Core logic written using 8086 instructions.

BIOS Interrupts (INT 10h): Used for screen clearing, cursor positioning, and drawing.

DOS Interrupts (INT 21h): Used for string printing and sound control.

EMU8086 / DOSBox: Emulators for compiling and running the program.

ASCII Art: Used for rendering the train in a visually appealing way.

Train Simulation Design
ASCII Art Representation
markdown
Copy
Edit
  oooOOOOOO"
 o   ____       :::::::: _|--|_
 Y_,_|[]| --+++ |[][][]| | [] |
{|_|_|__|;|___|;|______|;|____|;
 /oo--OO   o o   oo  oo   o  o
Gate and Signal Displays
Vehicle Signal: ----RED---- / ----GREEN----

Train Signal: ----GREEN---- / ----RED----

Gate Messages: ----CLOSE----- / ----OPEN-----

How It Works
Train Initialization: The train starts at column 80 and moves leftward with each loop iteration.

Gate Closes: When the train begins to move, gates display "CLOSE" and vehicle signals turn RED.

Train Animation: Each ASCII line is redrawn at the new position, simulating movement.

Gate Opens: When the train reaches column 47, the gates display "OPEN" and vehicle signals turn GREEN.

Sound Alert: A bell (ASCII 07h) rings upon the train's arrival.

Restart or Exit: Press any key to restart the animation, or press 'q' to exit.

Software Requirements
EMU8086 IDE (recommended) – for easy compilation and visualization.

TASM & DOSBox (alternative) – to build and run manually.

Operating System: Windows (with emulator) or any system that supports DOSBox.

Running the Program
Option 1: Using EMU8086
Open retrorun.asm in EMU8086.

Click Compile and Run.

Watch the simulation run in the emulator.

Option 2: Using TASM and DOSBox
bash
Copy
Edit
tasm retrorun.asm
tlink retrorun.obj
retrorun.exe
Future Enhancements
Add traffic lights animation with blinking effect.

Display timer countdown for gate open/close.

Add multiple trains or tracks.

Integrate keyboard controls to change speed or direction.

Additional Notes
The simulation clears and redraws the screen using low-level interrupt calls.

All segments (data, stack, and code) are properly initialized.

Ensure you compile and run this only in an emulator (it won’t run in a modern terminal).

Make sure to read all comments in retrorun.asm to understand logic and control flow.

📍 Fun Fact:

India's fastest train, the Vande Bharat Express, covers ~13.35 km in just 5 minutes.
This inspired the idea of simulating automated crossings for high-speed trains.

Author
Arun R.
M.Sc. Software Systems, Coimbatore Institute of Technology
GitHub: arunrdev
