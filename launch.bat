if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

IF EXIST %windir%\syswow64 ( imgdrive\imgdrive64 -m:F iso\sonicr.iso ) ELSE ( imgdrive\imgdrive86 -m:F iso\sonicr.iso )

sr_net.exe

IF EXIST %windir%\syswow64 ( imgdrive\imgdrive64 -u ) ELSE ( imgdrive\imgdrive86 -u )

exit