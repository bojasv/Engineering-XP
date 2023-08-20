# DOS Batch Language

.BAT -> BATch of executable commands
.CMD -> a script containing one or multiple CoMManDs 

Commands are executed in serial order
It helps automate routine tasks without requiring user input or intervention. 
Some common applications of batch files include 
- loading programs,
- running multiple processes or
- performing repetitive actions in a sequence in the system.

**How to run .bat or .cmd scripts (aka file)?**
Download the file
Locate the file and select it. Press `Alt + Enter`. Copy the complete path (say starting from `C:\`....to `test.bat`)
Now, press `Win + R` and paste the path.
To run the script, hit enter.

## Operations

**Executing Applications** - As app shortcuts
**Generating Reports**
**File I/O**
**User I/O** - As a standalone CMD app

## Helpful Concepts and Explanations
### Why `@echo off` ?
`@echo off` prevents the prompt and contents of the batch file from being displayed, so that only the output is visible. 
The `@` makes the output of the echo off command hidden as well.

### Comments
Use `::` or `rem` at the beginning of the comment-line

### Differences
- `.cmd` or `.bat`:
- - CMD files have the current version of Microsoft language while BAT has the older version of the Microsoft language.
  - CMD is backward compatible while BAT is not backward compatible.
  - CMD runs in most command.com scripts whereas BAT by itself will not run in command.com scripts unless made to do so.23-Mar-2023
- `>` or `>>` : `>` is used to create/replace a file, while `>>` is used to create/append to a file.
  rem 
  netsh wlan show profile name= "Dory 5G" key=clear > System_Report.txt
  wmic cpu list brief >> System_Report.txt

 
