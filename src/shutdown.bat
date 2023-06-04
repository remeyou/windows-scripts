@echo off
set /p minutes="Enter the number of minutes after which the PC should be shut down: "
set /a seconds=%minutes% * 60
for /l %%i in (%seconds%,-1,0) do (
cls
echo. This PC will shut down in %%i seconds. Save your work or press CTRL+C to abort.
ping -n 2 127.0.0.1>nul
)
shutdown /s
exit