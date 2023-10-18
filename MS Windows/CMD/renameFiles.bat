@echo off
setlocal enabledelayedexpansion

cd /d "C:\Users\DELL\Documents\MyFolder"  REM Replace with the actual path to your folder

for %%f in (* *.txt) do (
    set "filename=%%~nf"
    set "filename=!filename: (=_!"
    set "filename=!filename:)=!"
    ren "%%f" "!filename!%%~xf"
)

endlocal
