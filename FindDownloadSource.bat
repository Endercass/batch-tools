@echo off

if [%1]==[] goto usage
more <%1:Zone.Identifier:$DATA > .temp
type .temp | findstr /v ZoneId | findstr /v ZoneTransfer
del .temp
exit /B 1

:usage
echo Usage: %0 ^<File to trace^>
exit /B 1
