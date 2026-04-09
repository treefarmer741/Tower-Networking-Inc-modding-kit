@echo off

set MODS_DIR="%APPDATA%\Godot\app_userdata\Tower Networking Inc\mods\"

echo Copying mods to %MODS_DIR%

xcopy /Y /s /e ".\mods\" %MODS_DIR%

@REM xcopy /Y /s /e ".\mods\luajit\" %MODS_DIR%
