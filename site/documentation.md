# Documentation for Blink

Blink is a debugger for Scratch.

## Enabling and disabling

When you open the Scratch Editor, the debugger is disabled by default.
To start a debugging session, press the "Bug" icon next to the normal Scratch controls.
The status bar turns green to indicate debugging is active and the debugger controls appear.

To disable debug mode, press the bug icon again.

## Pausing and timeline

The controls under the canvas allow you to pause (or resume) execution.

- When paused, the forward button can be used to execute one step.
- The next block(s) that will be executed are highlighted in gray.
- The timeline and back button allow you to go back to a previous state.
- The red dot blinks to indicate you are executing. If the red dot is not blinking, you are in a previous state and thus replaying an execution.

## Breakpoints (pause blocks)

The debugger includes a Scratch extension that provides four more blocks:

![Debugger blocks](/scratchblocks.svg)

- The `pause` block pauses the debugger when executed.
- The `pause if` block pauses the debugger when executed and if the condition is `true`.
- The `wait until and pause` block will wait until a condition is `true` and then pause the debugger.
- The `is debugger enabled?` block is a boolean reporter that is `true` if a debugging session is active.

Note that the third block can be recreated using a `forever` block and the second block.


