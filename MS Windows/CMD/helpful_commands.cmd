::CMD is technically a shell scripting language like bash, sh, or csh. It's useful for automating tasks involving calling existing programs from the command line.
::CMD.exe 'Command Prompt' is actually a command interpreter.
::BAT is a scripting language that has an interpreter. CMD does not run a sequence of commands and hence we can say that CMD is safer than BAT. 
::BAT files help in starting the big programs in the Windows system and also for the maintenance.
::CPL is Control Panel files. AppWiz, Desk, iNetCpl, Main, Mmsys, SysDm, and TimeDate are some commonly used CPL commands.
::MSC is Microsoft Management Console files. 
::CompMgmt, DevMgmt, DiskMgmt, EventVwr, FSMgmt, GPEdit, LUsrMgr, PerfMon, RSOP, SecPol, and Services are some commonly used MSC commands.
::INI files (short for initialize) are configuration files used by Windows to INItialize program settings. System and Win are some e.g.
::Scripting languages have list of commands. Here are some of general utility. Commands are not case sensitive.
::These commands leads you to some helpful toolboxes, tools, applets etc.

ping /?
::opens ping help section

ping 142.250.193.206 -t 
::pings indefinitely. CMD window doesn't closes automatically.

ping -a 142.250.193.206
::returns host-name resolved by the DNS, 'Pinging del11s17-in-f14.1e100.net [142.250.193.206] with 32 bytes of data:'

PowerCfg /sleepstudy
::"Sleep Study report saved to file path C:\Windows\system32\sleepstudy-report.html."
::generates a list of all power related events sucha s turn-on/-off/sleep/hibernate etc.

::::::::::::::::::::::::::::::::::::
::open-up Windows Apps using CMD
::::::::::::::::::::::::::::::::::::
NotePad
::launch Notepad

MSPaint
::launch Paint

calc
::launch Calculator

OSK
::On Screen Keyboard

WinWord
::launches MS Word (MS Office)

Excel
::launches MS Excel (MS Office)

PowerPnt
::launches MS PowerPoint (MS Office)

OutLook
::launches MS Outlook

Code
::launches VS Code in a new window

MSEdge
::launches MS Edge web-browser in a new window

Chrome
::launches Google Chrome web-browser in a new window

\
::launches `C:` drive commonly named as `Local Disk (C:)` 

explorer
::launch File Explorer. Shortcut: Win + E 

explorer.exe shell:RecycleBinFolder
::launch Recycle Bin

TaskMgr
::launch Task Manager. Shortcut: Ctrl+Shift+Esc

%temp%
::memory cleanup - system temporary data, such as environmental variables.

temp
::memory cleanup - application temporary data, such as host data.

PreFetch
::memory cleanup - Recent Items

control
::launch Control Panel. alt command `control panel`

AppWiz.cpl
::launch Programs and Features [control panel] [msconfig]

C:\Users\HWMFR\Desktop\xxxxxxxxxx.bat
::execute script 

MSConfig
::launch System Configuration (OS Startup, Boot, other helpful System32 tools)

WinVer
::check Windows Version. [msconfig]

MSInfo32
::check System Information. [msconfig]

RegEdit
::launch Registry Editor. Also regedt32 [msconfig]

PerfMon
::launch Performance Monitor [msconfig]

SysDm.cpl
::Name/Rename your PC. short for SYStem Device Manager Control PaneL.

GPEdit.msc
::launch Local Group Policy Editor

NetPlWiz
::launch User Accounts

DevMgmt.msc
::launch Device Manager (Hardware)

MailTo:
::launches default eMail client, create new email

shell:startup 
::add/remove app to run after Windows start-up
::navigates to '%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup'

RASDial *VPN_name* *user* *password*
::Connect to VPN. RAS is short for Remote Access Service

RSOP.msc
::Resultant Set Of Policies

PowerCfg.cpl
::launches Power Options [control]

FireWall.cpl
::launches Windows Defender Firewall [control]

:::::::::::::::::::::::::::::::::::::::
::special CMD screens or terminals
:::::::::::::::::::::::::::::::::::::::

WT
::launches Windows Terminal

cmd /k ftp
::launches CMD prompt in FTP mode

ssh user@host
::securely logs into a remote machine (the `host`) and execute commands on that machine (as a `user`)
::find other useful SSH utilities at C:\Windows\System32\OpenSSH

C:\Windows\System32\OpenSSH
::goto a path. The above path leads to the `OpenSSH` folder in `C:\Windows\System32` directory

WMIC.exe
::Windows Management Instrumentation Console

NetSh
::launches Network Shell in CMD.exe

ConHost
::launches Console Window Host - It is the server application for all of the Windows Console APIs, also acts as CMD
::located at path `%windir%\System32\conhost.exe`
::Conhost.exe is actually a relatively recent addition to this process. 
::It was developed for Windows 7 to help ease some of the heavy burden put on the csrss.exe file.
::If third parties need access to the command line they are also able to use conhost.exe, instead cmd.exe
::could be running as a malware if no parent process can be attributed to it. 
::If that's the case boot to Safe Mode (F8 during system turn-on) and run Full System Scan

:::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: How to Identify appropriate run CMD for an app ???
:::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Run the application
:: Task Manager -> Processes -> Apps -> *locate the app and right click* -> Properties
:: Copy the text from the input field and paste it in the run. Some commands also work after dropping the file extn.
:: May also copy the `Location:` and append the file name before executing it thru the Run dialog box

:::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: How to run CMD commands from Run box directly ???
:::::::::::::::::::::::::::::::::::::::::::::::::::::::
::basically most command executes if you suffix them after 'cmd /k ', like `cmd /k ftp`
::another e.g. 'cmd /k echo Hello' . It will launched CMD, prints 'Hello' and waits for next command.

cmd /k tzutil /s "India Standard Time"
