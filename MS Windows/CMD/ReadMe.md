# DOS Batch Language

1980 (Aug) - DOS got first developed as 86-DOS, i.e. an OS for Intel 8086 by a Seattle (Washington) based repair technician turned hardware engineer, Tim Paterson. When he first began work on it in Apr 1980, he named it QDOS (Quick and Dirty Operating System) ;)

- .BAT -> BATch of executable commands
- .CMD -> a script containing one or multiple CoMManDs
- .DAT -> a file having data (can be binary CLOB, CSV, or even XML)
- .EXE -> executable binary code for MS Windows (pre-interpreted by compiler, stores pure computer instructions) - similar to Objects on IBM i?

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
Use `::` or `rem` at the beginning of the comment-line. `rem` is short for remark.

### Differences
- `.cmd` or `.bat`:
- - CMD files have the current version of Microsoft language while BAT has the older version of the Microsoft language.
  - CMD is backward compatible while BAT is not backward compatible.
  - CMD runs in most command.com scripts whereas BAT by itself will not run in command.com scripts unless made to do so.23-Mar-2023
- `>` or `>>` : `>` is used to create/replace a file, while `>>` is used to create/append to a file.
  rem 
  netsh wlan show profile name= "Dory 5G" key=clear > System_Report.txt
  wmic cpu list brief >> System_Report.txt

## CMD Command
If you wish to stop the computer in the midst of executing the current command, you may use the key sequence Ctrl-Break. Ctrl-Break does not always work with non-DOS commands.

**Function Keys**
- F11 - Toggles Full Screen
- F9  - copies command to command line (if you know the command #), else use F8
- F8  - cycles thru recently entered commands, can also work like wildcard search (press 'c' and F8 could fetch clr, clear, chkdsk ...)

## WMIC Commands for Global Switches
Use `wmic /?` to get the list, here's the dummy output

```
WMIC is deprecated.
The following global switches are available:
- /NAMESPACE           Path for the namespace the alias operate against.
- /ROLE                Path for the role containing the alias definitions.
- /NODE                Servers the alias will operate against.
- /IMPLEVEL            Client impersonation level.
- /AUTHLEVEL           Client authentication level.
- /LOCALE              Language id the client should use.
- /PRIVILEGES          Enable or disable all privileges.
- /TRACE               Outputs debugging information to stderr.
- /RECORD              Logs all input commands and output.
- /INTERACTIVE         Sets or resets the interactive mode.
- /FAILFAST            Sets or resets the FailFast mode.
- /USER                User to be used during the session.
- /PASSWORD            Password to be used for session login.
- /OUTPUT              Specifies the mode for output redirection.
- /APPEND              Specifies the mode for output redirection.
- /AGGREGATE           Sets or resets aggregate mode.
- /AUTHORITY           Specifies the <authority type> for the connection.
- /?[:<BRIEF|FULL>]    Usage information.

  For more information on a specific global switch, type: switch-name /?  
- The following alias/es are available in the current role:
- ALIAS                    - Access to the aliases available on the local system
- BASEBOARD                - Base board (also known as a motherboard or system board) management.
- BIOS                     - Basic input/output services (BIOS) management.
- BOOTCONFIG               - Boot configuration management.
- CDROM                    - CD-ROM management.
- COMPUTERSYSTEM           - Computer system management.
- CPU                      - CPU management.
- CSPRODUCT                - Computer system product information from SMBIOS.
- DATAFILE                 - DataFile Management.
- DCOMAPP                  - DCOM Application management.
- DESKTOP                  - User's Desktop management.
- DESKTOPMONITOR           - Desktop Monitor management.
- DEVICEMEMORYADDRESS      - Device memory addresses management.
- DISKDRIVE                - Physical disk drive management.
- DISKQUOTA                - Disk space usage for NTFS volumes.
- DMACHANNEL               - Direct memory access (DMA) channel management.
- ENVIRONMENT              - System environment settings management.
- FSDIR                    - Filesystem directory entry management.
- GROUP                    - Group account management.
- IDECONTROLLER            - IDE Controller management.
- IRQ                      - Interrupt request line (IRQ) management.
- JOB                      - Provides  access to the jobs scheduled using the schedule service.
- LOADORDER                - Management of system services that define execution dependencies.
- LOGICALDISK              - Local storage device management.
- LOGON                    - LOGON Sessions.
- MEMCACHE                 - Cache memory management.
- MEMORYCHIP               - Memory chip information.
- MEMPHYSICAL              - Computer system's physical memory management.
- NETCLIENT                - Network Client management.
- NETLOGIN                 - Network login information (of a particular user) management.
- NETPROTOCOL              - Protocols (and their network characteristics) management.
- NETUSE                   - Active network connection management.
- NIC                      - Network Interface Controller (NIC) management.
- NICCONFIG                - Network adapter management.
- NTDOMAIN                 - NT Domain management.
- NTEVENT                  - Entries in the NT Event Log.
- NTEVENTLOG               - NT eventlog file management.
- ONBOARDDEVICE            - Management of common adapter devices built into the motherboard (system board).
- OS                       - Installed Operating System/s management.
- PAGEFILE                 - Virtual memory file swapping management.
- PAGEFILESET              - Page file settings management.
- PARTITION                - Management of partitioned areas of a physical disk.
- PORT                     - I/O port management.
- PORTCONNECTOR            - Physical connection ports management.
- PRINTER                  - Printer device management.
- PRINTERCONFIG            - Printer device configuration management.
- PRINTJOB                 - Print job management.
- PROCESS                  - Process management.
- PRODUCT                  - Installation package task management.
- QFE                      - Quick Fix Engineering.
- QUOTASETTING             - Setting information for disk quotas on a volume.
- RDACCOUNT                - Remote Desktop connection permission management.
- RDNIC                    - Remote Desktop connection management on a specific network adapter.
- RDPERMISSIONS            - Permissions to a specific Remote Desktop connection.
- RDTOGGLE                 - Turning Remote Desktop listener on or off remotely.
- RECOVEROS                - Information that will be gathered from memory when the operating system fails.
- REGISTRY                 - Computer system registry management.
- SCSICONTROLLER           - SCSI Controller management.
- SERVER                   - Server information management.
- SERVICE                  - Service application management.
- SHADOWCOPY               - Shadow copy management.
- SHADOWSTORAGE            - Shadow copy storage area management.
- SHARE                    - Shared resource management.
- SOFTWAREELEMENT          - Management of the  elements of a software product installed on a system.
- SOFTWAREFEATURE          - Management of software product subsets of SoftwareElement.
- SOUNDDEV                 - Sound Device management.
- STARTUP                  - Management of commands that run automatically when users log onto the computer system.
- SYSACCOUNT               - System account management.
- SYSDRIVER                - Management of the system driver for a base service.
- SYSTEMENCLOSURE          - Physical system enclosure management.
- SYSTEMSLOT               - Management of physical connection points including ports,  slots and peripherals, and proprietary connections points.
- TAPEDRIVE                - Tape drive management.
- TEMPERATURE              - Data management of a temperature sensor (electronic thermometer).
- TIMEZONE                 - Time zone data management.
- UPS                      - Uninterruptible power supply (UPS) management.
- USERACCOUNT              - User account management.
- VOLTAGE                  - Voltage sensor (electronic voltmeter) data management.
- VOLUME                   - Local storage volume management.
- VOLUMEQUOTASETTING       - Associates the disk quota setting with a specific disk volume.
- VOLUMEUSERQUOTA          - Per user storage volume quota management.
- WMISET                   - WMI service operational parameters management.

For more information on a specific alias, type: alias /?
- 
- CLASS     - Escapes to full WMI schema.
- PATH      - Escapes to full WMI object paths.
- CONTEXT   - Displays the state of all the global switches.
- QUIT/EXIT - Exits the program.
 
For more information on CLASS/PATH/CONTEXT, type: (CLASS | PATH | CONTEXT) /?
```

## Ping
- `General failure.` -> either IP is incorrect or most likely you're disconnected
- `PING: transmit failed. General failure.` -> either IP is incorrect or most likely you're disconnected
- `Request timed out.` -> glitch in the internet?
- `Reply from ::1: time<1ms` -> localhost is fine
- `Reply from 127.0.0.1: bytes=32 time<1ms TTL=128` -> localhost is fine
- `Reply from 142.250.192.163: bytes=32 time=19ms TTL=115` -> internet is working fine

```
Microsoft Windows [Version 10.0.21996.1]
(c) Microsoft Corporation. All rights reserved.

C:\Users\DELL>ping localhost

Pinging PCNAME-L5490 [::1] with 32 bytes of data:
Reply from ::1: time<1ms
Reply from ::1: time<1ms
Reply from ::1: time<1ms
Reply from ::1: time<1ms

Ping statistics for ::1:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms

C:\Users\DELL>ping 127.0.0.0

Pinging 127.0.0.0 with 32 bytes of data:
General failure.
General failure.
General failure.
General failure.

Ping statistics for 127.0.0.0:
    Packets: Sent = 4, Received = 0, Lost = 4 (100% loss),

C:\Users\DELL>ping 127.0.0.1

Pinging 127.0.0.1 with 32 bytes of data:
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128

Ping statistics for 127.0.0.1:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms

C:\Users\DELL>ping 0.0.0.1

Pinging 0.0.0.1 with 32 bytes of data:
PING: transmit failed. General failure.
PING: transmit failed. General failure.
PING: transmit failed. General failure.
PING: transmit failed. General failure.

Ping statistics for 0.0.0.1:
    Packets: Sent = 4, Received = 0, Lost = 4 (100% loss),

C:\Users\DELL>ping www.google.co.in

Pinging www.google.co.in [142.250.192.163] with 32 bytes of data:
Reply from 142.250.192.163: bytes=32 time=19ms TTL=115
Reply from 142.250.192.163: bytes=32 time=21ms TTL=115
Reply from 142.250.192.163: bytes=32 time=18ms TTL=115
Reply from 142.250.192.163: bytes=32 time=18ms TTL=115

Ping statistics for 142.250.192.163:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 18ms, Maximum = 21ms, Average = 19ms

C:\Users\DELL>```
