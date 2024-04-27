@echo off
setlocal enabledelayedexpansion

set "folder=C:\PhotoMaster"
set "fileSize=1073741824"  REM 1 гигабайт в байтах

set /a "i=1"
:loop
    if %i% leq 100 (
        mkdir "!folder!\Folder%i%"
        fsutil file createnew "!folder!\Folder%i%\dummy.file" %fileSize%
        set /a "i+=1"
        goto :loop
    )

endlocal