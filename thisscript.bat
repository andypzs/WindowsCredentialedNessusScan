#AndyPAZOS

sc query winmgmt 
sc config winmgmt start= auto
net start winmgmt
sc config RemoteRegistry start= auto
net start RemoteRegistry
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing over SMBDirect" new enable=Yes
netsh advfirewall firewall add rule name="Nessus In" dir=in action=allow protocol=TCP localport=139,445
netsh advfirewall firewall add rule name="Nessus Out" dir=out action=allow protocol=TCP localport=139,445
net share
reg add HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters /v AutoShareWks /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
reg add HKLM\System\CurrentControlSet\Services\LanManWorkstation\Parameters /v EnableSecuritySignature /t REG_DWORD /d 1 /f
reg add HKLM\System\CurrentControlSet\Services\LanManWorkstation\Parameters /v RequireSecuritySignature /t REG_DWORD /d 1 /f
reg add HKLM\System\CurrentControlSet\Services\LanManServer\Parameters /v EnableSecuritySignature /t REG_DWORD /d 1 /f
reg add HKLM\System\CurrentControlSet\Services\LanManServer\Parameters /v RequireSecuritySignature /t REG_DWORD /d 1 /f
net stop LanmanServer
net start LanmanServer
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
netsh advfirewall firewall set rule group="Windows Management Instrumentation (WMI)" new enable=Yes
netsh advfirewall firewall set rule group="Windows Remote Management" new enable=Yes
netsh advfirewall firewall set rule group="Remote Service Management" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing over SMBDirect (iWARP-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (LLMNR-UDP-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (LLMNR-UDP-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Echo Request - ICMPv4-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Echo Request - ICMPv4-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Datagram-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Datagram-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Name-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Name-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Echo Request - ICMPv6-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Echo Request - ICMPv6-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Session-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (NB-Session-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (SMB-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (SMB-Out)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Spooler Service - RPC-EPMAP)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (Spooler Service - RPC)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (WSD-In)" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing (WSD-Out)" new enable=Yes                                   
