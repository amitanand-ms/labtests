Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "PortNumber" -Value 3390
Set-NetFirewallRule -DisplayName 'Remote Desktop - User Mode (TCP-In)' -Profile 'All' -Direction Inbound -Action Block -Protocol TCP -LocalPort 3389
