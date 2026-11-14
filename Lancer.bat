@echo off
cd /d "%~dp0"
java -jar NeonBreaker.jar
if errorlevel 1 pause
