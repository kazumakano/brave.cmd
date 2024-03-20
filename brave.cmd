@echo off

set EXE_FILE="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"

setlocal enabledelayedexpansion

set query=""
for %%a in (%*) do (
    set query=!query!+%%a
)

%EXE_FILE% "https://www.google.com/search?q=!query:~1!"

endlocal
