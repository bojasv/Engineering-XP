try { 
    $uri = 'https://aka.ms/windowsappsdk/1.8/1.8.260101001/windowsappruntimeinstall-x64.exe' ; 
    $file = \"$env:TEMP\WindowsAppRuntimeInstall-x64.exe\" ; 
    Invoke-WebRequest -Uri $uri -OutFile $file -UseBasicParsing ; 
    Start-Process -FilePath $file -ArgumentList '/quiet /norestart' -Wait ; 
    Remove-Item $file -Force ; 
    Write-Host 'Microsoft Windows App Runtime reinstalled successfully.' -ForegroundColor Green} 
catch { 
    Write-Host 'Failed to reinstall Microsoft Windows App Runtime.' -ForegroundColor Red}
