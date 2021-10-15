@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
    "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
) else (
    set query=
    for %%a in (%*) do (set query=!query!+%%a)

    "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" https://www.google.com/search?q=!query:~1!
)

endlocal