@ECHO OFF
@TITLE KEEP AWAKE
CLS
COLOR 0E
ECHO.
ECHO.
ECHO     ************************************************** KEEP AWAKE **************************************************
ECHO.
ECHO.
ECHO    KEEP AWAKE IS NOW RUNNING, THIS CONSOLE/TERMINAL IS NOW LOCKED!
ECHO.
ECHO    PRESS CTRL + C TO STOP!
ECHO.
POWERSHELL -NOPROFILE -EXECUTIONPOLICY BYPASS -COMMAND "Add-Type -MemberDefinition '[System.Runtime.InteropServices.DllImport(\"kernel32.dll\")] public static extern uint SetThreadExecutionState(uint esFlags);' -Name Awake -Namespace Win32; while($true){ [Win32.Awake]::SetThreadExecutionState([uint32]2147483650) | Out-Null; Start-Sleep -Seconds 120 }"
EXIT