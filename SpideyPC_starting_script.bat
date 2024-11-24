@echo off

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::: Configs
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Please set nircmd path properly
set nircmd_path=C:\Speedrun\__Utilities\nircmd-x64\nircmdc.exe

set sleep_time=5		& :: Default: 5 seconds

set "set_volume=true"	& :: Default: true
set volume=0.10			& :: Default: 0.10

set "set_position=true"		& :: Default: true

:: These values will be ignored if "CenterAppWindow = true" in dgVoodoo.conf
set position_x=320			& :: Default: 320
set position_y=30			& :: Default: 30

:: These values are only needed because the nircmd command to set the window position also needs
:: two values for width and height.
:: The settings in dgVoodoo.conf will be used for the resolution
set window_width=1280		& :: Default: 1280
set window_height=960		& :: Default: 960

set "keep_window_open=false"		& :: Default: false



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::: Script 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

for /f "tokens=6" %%f in ('powershell Start-Process SpideyPC.exe -passthru') do (
    set ppid=%%f
)

timeout /T %sleep_time% /nobreak

echo pid=%ppid%

if "%set_volume%" == "true" (
	echo Volume = %volume%
	%nircmd_path% setappvolume /%ppid% %volume%
)

if "%set_position%" == "true" (
	echo Setting window position:
	echo     x = %position_x%
	echo     y = %position_y%
	%nircmd_path% win setsize process /%ppid% %position_x% %position_y% %window_width% %window_height%
)

if "%keep_window_open%" == "true" (
	%PAUSE
)



