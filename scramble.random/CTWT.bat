@echo off
:: Request Administrator privileges if not already running as Admin
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Launch Chris Titus Windows Utility
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://christitus.com/win | iex"
