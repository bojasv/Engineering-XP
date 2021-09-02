:: This batch script generates various reports at the given path
Rem Remarks (commonly called as comments) added this way would get displayed on CMD prompt during script processing

@echo off
cd c:\users

:: list of valid CMD command
help > c:\users\bojasva\documents\help_CMD.txt

:: Windows System Info
systeminfo > C:\Users\bojasva\Documents\report_sys.txt

:: Windows Management Interface Command (WMIC) - RAM details
wmic memorychip get > c:\users\bojasva\documents\report_RAM.txt

:: To get info about any command - Use " /?" as command suffix or "help " as command prefix 
wmic /? > c:\users\bojasva\documents\help_WMIC.txt

:: to get selected attributes
wmic memorychip get capacity,name,manufacturer,speed,status > c:\users\bojasva\documents\report_RAM_attr.txt

:: WRKACTJOB - active jobs
wmic process > c:\users\bojasva\documents\report_processes.txt
:: wmic process list > c:\users\bojasva\documents\report_processes_list.txt
:: wmic process list brief > c:\users\bojasva\documents\report_processes_list_brief.txt

:: print all running apps, Programmes, and Their RAM/Memory Usage - wmic process get workingsetsize,commandline
:: startup apps - wmic startup
:: services - wmic service list
:: kill a process - wmic process where name="chrome.exe" call terminate

:: Recently used websites
ipconfig /displaydns | find "Record Name" > c:\users\bojasva\documents\report_browse.txt
:: if report_browse.txt is already opened in notepad, it'd need to be closed to get it replaced in before re-running that script???
