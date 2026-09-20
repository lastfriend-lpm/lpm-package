:: name: counter
:: version: 1.0.0
:: author: lastfriend
:: desc: Счётчик запусков
:: deps:
@echo off
chcp 65001 >nul 2>&1

set "PCF=%LPM_PKG_PCF%"
set "N=0"

if exist "%PCF%" (
    for /f "tokens=1,* delims==" %%a in ('findstr /b "n=" "%PCF%"') do set "N=%%b"
)
set /a N+=1
echo n=!N!> "%PCF%"
echo last=%date% %time%>> "%PCF%"

echo Ты запускал этот пакет !N! раз.
