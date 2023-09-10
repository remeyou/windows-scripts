$WinNetIP=$(Get-NetIPAddress -InterfaceAlias 'vEthernet (WSLCore)' -AddressFamily IPV4)
echo $WinNetIP
adb connect 127.0.0.1:58526
adb shell settings put global http_proxy $($WinNetIP.IPAddress):2080
pause
