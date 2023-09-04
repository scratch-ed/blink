# Debugger for Scratch

This is a monorepo for the Blink debugger for Scratch.

The Scratch project consists of [a bunch of different subprojects](https://github.com/scratchfoundation/scratch-gui/wiki/Getting-Started#repos), each with their own repository.
Our debugger needs one additional package and a fork of two Scratch packages:

- The [judge](https://github.com/scratch4d/itch/tree/debugger)
- The [VM](https://github.com/scratch4d/scratch-vm/tree/debugger)
- The [GUI](https://github.com/scratch4d/scratch-gui/tree/debugger)

Below are installation instructions, assuming you use this repository.

## Installation instructions

1. Have an environment with Node, npm and Bash.
2. Clone this repository.
3. Initialize the submodules: `todo`
4. Run the installation script: `./install.sh`

If you want to run the installation manually (e.g. Windows), run each command from the installation script.

## Rebuild instructions

The installation instructions above will build the GUI once.
However, if you change things, you'll need to rebuild everything.

- If you work on Itch, you'll need to run `npm run build` inside the `itch` folder. Alternatively, you can run `npm run watch` to automatically rebuild Itch on changes.
- If you work on the VM, you'll need to run `npm run build` inside the `scratch-vm` folder. Alternatively, you can run `npm run watch` to automatically rebuild the Scratch VM on changes.
- To see or work on the GUI, run `npm run start` inside the `scratch-gui` folder.

## Sample projects

In the `projects` folder, you'll find two sample projects that can be used to experiment with the debugger.
