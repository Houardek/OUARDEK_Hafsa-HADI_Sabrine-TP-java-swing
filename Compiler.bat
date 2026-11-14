@echo off
cd /d "%~dp0"
if not exist classes mkdir classes
javac -encoding UTF-8 -source 8 -target 8 -d classes src\NeonBreaker.java
if errorlevel 1 goto fail
jar cfe NeonBreaker.jar NeonBreaker -C classes .
if errorlevel 1 goto fail
echo Compilation terminee.
pause
exit /b 0
:fail
echo Verifier votre installation du JDK.
pause
exit /b 1
