@echo off

rem ask user to note the cd, say: 'C:\Users\DELL>'
rem replace "Dory 5G" by the valid WLAN SSID
rem to locate the output file, ask user to press Win+R and type 'C:\Users\DELL>' and hit enter

netsh wlan show profile name= "Dory 5G" key=clear > System_Report.txt

wmic cpu list brief >> System_Report.txt
wmic memorychip list brief >> System_Report.txt
wmic diskdrive list brief >> System_Report.txt
wmic bios list brief >> System_Report.txt
wmic os list brief >> System_Report.txt
wmic baseboard list brief >> System_Report.txt
wmic useraccount >> System_Report.txt

systeminfo > System_Report.txt

wmic cpu list full >> System_Report.txt
wmic memorychip list full >> System_Report.txt
wmic diskdrive list full >> System_Report.txt
wmic bios list full >> System_Report.txt
wmic baseboard list full>> System_Report.txt
:: NumberOfLogons, FullName
wmic netlogin list full >> System_Report.txt
wmic product >> System_Report.txt
wmic os >> System_Report.txt
