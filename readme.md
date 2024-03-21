# Blink: a debugger for Scratch

This is a monorepo for the Blink debugger for Scratch.

If you find Blink useful and use it in your research, please cite:

Strijbol, N., De Proft, R., Goethals, K., Mesuere, B., Dawyndt, P., & Scholliers, C. (2024). _Blink: An educational software debugger for Scratch._ SoftwareX, vol. 25, p. 101617. https://doi.org/10.1016/j.softx.2023.101617

Start playing with Blink integrated in the Scratch IDE at https://scratch.ugent.be/blink/.

The Scratch project consists of [a bunch of different subprojects](https://github.com/scratchfoundation/scratch-gui/wiki/Getting-Started#repos), each with their own repository. Blink needs one additional package and a fork of two Scratch packages:

- The [judge](https://github.com/scratch4d/itch/tree/debugger)
- The [VM](https://github.com/scratch4d/scratch-vm/tree/debugger)
- The [GUI](https://github.com/scratch4d/scratch-gui/tree/debugger)

Below are installation instructions, assuming you use this repository.

## Installation instructions

1. Have an environment with Node, npm and Bash.
2. Clone this repository.
3. Run the installation script: `./install.sh`

If you want to run the installation manually (e.g. Windows), run each command from the installation script.

## Rebuild instructions

The installation instructions above will build the GUI once.
However, if you change things, you'll need to rebuild everything.

- If you work on Itch, you'll need to run `npm run build` inside the `itch` folder. Alternatively, you can run `npm run watch` to automatically rebuild Itch on changes.
- If you work on the VM, you'll need to run `npm run build` inside the `scratch-vm` folder. Alternatively, you can run `npm run watch` to automatically rebuild the Scratch VM on changes.
- To see or work on the GUI, run `npm run start` inside the `scratch-gui` folder.

## Demo projects

In the `site/public` folder, you'll find two sample projects that can be used to experiment with the debugger.

## Debugging with VS Code

### Step 0: installing the basics

1. Install VS Code 
2. Install Chrome or Chromium
3. In VS Code, install the "Debugger for Chrome" extension (search for `msjsdiag.debugger-for-chrome`)

### Step 1: adding source maps

1. Pick "Open Folder..." under the "File" menu.
2. Select your `blink` repository.

Further setup steps will involve editing the launch configuration for your workspace:

1. Open the "Run" panel in the VS Code UI (looks like a bug and a triangle)
2. Depending on the state of your workspace, one of two options will appear: 
    * If you see "create a launch.json file" then select that and, in the drop-down menu, select "Chrome"
    * Otherwise, click the "Open launch.json" button near the top (looks like a gear)

`launch.json` should now look something like this:

```json
{
    "version": "0.2.0", // do not edit this version number
    "configurations": [ // this section may be empty or may have an entry with type "chrome"
    ]
}
```

and to enable debugging of blink, it needs to look like this:

```json
{
    "version": "0.2.0", 
    "configurations": [ 
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch blink in Chrome ",
            "sourceMapPathOverrides": {
                "webpack://GUI/./*": "${workspaceFolder}/scratch-gui/*",
                "webpack://GUI/./node_modules/scratch-vm/*": "${workspaceFolder}/scratch-vm/*",
                "webpack://itch-core/*": "${workspaceFolder}/itch/packages/core/*"
            },
            "sourceMaps": true,
            "url": "http://localhost:8601", 
            "webRoot": "/:", 
        }
    ]
}
```

