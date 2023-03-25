::CMD is technically a shell scripting language like bash, sh, or csh. It's useful for automating tasks involving calling existing programs from the command line.
::CMD.exe 'Command Prompt' is actually a command interpreter.
::BAT is a scripting language that has an interpreter. CMD does not run a sequence of commands and hence we can say that CMD is safer than BAT. 
::BAT files help in starting the big programs in the Windows system and also for the maintenance. 
::Scripting languages have list of commands. Here are some of general utility.

ping /?
::opens ping help section

ping 142.250.193.206 -t 
::pings indefinitely. CMD window doesn't closes automatically.

ping -a 142.250.193.206
::returns host-name resolved by the DNS, 'Pinging del11s17-in-f14.1e100.net [142.250.193.206] with 32 bytes of data:'

powercfg /sleepstudy
::"Sleep Study report saved to file path C:\Windows\system32\sleepstudy-report.html."
::generates a list of all power related events sucha s turn-on/-off/sleep/hibernate etc.
