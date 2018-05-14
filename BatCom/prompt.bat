@echo off
cls

:varsetup
set "bc_root=%~dp0"
set "bc_bin=%bc_root%bin\"
set "bc_lib=%bc_root%lib\"
set "bc_res=%bc_root%res\"
set "bc_sys=%bc_sys%sys\"
set /p bc_ver=<"%bc_res%version.txt"

:welcome
echo SykeBen BatCom [%bc_ver%]
echo (c) 2018 SykeBen and bIT-Works. All rights reserved.

:prompt
echo.
set bc_com=
echo %cd%
set /p "bc_com= \_ %username%@%computername%$> "
if /I "%bc_com%" EQU "quit" goto :quit
echo.
call "%bc_sys%runcom.bat" %bc_com%
goto :prompt

:quit
cls
echo Thank you for using SykeBen BatCom Version %bc_ver%!
echo.