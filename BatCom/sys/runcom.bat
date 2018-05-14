@echo off
set bc_cmd=%1
set "bc_arg=%2 %3 %4 %5 %6 %7 %8 %9"
if exist "%bc_bin%%bc_cmd%.bat" goto :yes
goto :no

:no
echo Could not find the command %bc_cmd%.
goto :end

:yes
call "%bc_bin%%bc_cmd%.bat" %bc_arg%
goto :end

:end