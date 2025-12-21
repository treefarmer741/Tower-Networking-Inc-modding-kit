---@meta _
-- Generated API for game version 0.9.1

---@class MainPane : Container
---@field toast_control Control
---@field launcher_container Container
---@field current_foreground_app Node
---@field previous_foreground_app Node
local MainPane = {}

---@param c ScreenAppLauncher
---@param add_sal_as_child boolean?  # Default = false
function MainPane.setup_launcher(c, add_sal_as_child) end

---@param msg string
---@param duration integer?  # Default = 0
function MainPane.toast(msg, duration) end

function MainPane.show_home() end

---@param app_name string
function MainPane.launch_app(app_name) end
