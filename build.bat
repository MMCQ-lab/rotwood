@echo off
rem Windows build of Rotwood Hold (for testing). Needs Zig in C:\tools\zig and SDL2 in C:\tools\SDL2.
setlocal
cd /d "%~dp0"
set "SDL=C:\tools\SDL2\x86_64-w64-mingw32"
if not exist build mkdir build
C:\tools\zig\zig.exe cc -O2 -std=c99 -Wall -Wextra -Wno-misleading-indentation -target x86_64-windows-gnu ^
  -I"%SDL%\include\SDL2" src\main.c "%SDL%\lib\libSDL2.dll.a" -o build\rotwood-hold.exe
if errorlevel 1 exit /b 1
copy /y "%SDL%\bin\SDL2.dll" build\ >nul
echo Built build\rotwood-hold.exe
