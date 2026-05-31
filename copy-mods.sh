#!/bin/bash
if command -v wslpath >/dev/null 2>&1 && command -v cmd.exe >/dev/null 2>&1
then
	TNI_USER_DIR_WIN=$(cmd.exe /c echo "%APPDATA%\\Godot\\app_userdata\\Tower Networking Inc")
	TNI_USER_DIR_WIN=$(sed -e 's/"\r$//g' <<< ${TNI_USER_DIR_WIN#\"})
	TNI_USER_DIR=$(wslpath -u -a "$TNI_USER_DIR_WIN")
else
	TNI_USER_DIR="~/.local/share/godot/app_userdata/Tower Networking Inc"
fi
MODS_DIR=$TNI_USER_DIR/mods

echo Copying mods to \"$MODS_DIR\"

cp -r ./mods/* "$MODS_DIR"

# cp -r ./mods/luajit "$MODS_DIR"
