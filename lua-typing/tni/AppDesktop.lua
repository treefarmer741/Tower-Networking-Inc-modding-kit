---@meta _
-- Generated API for game version 0.10.11

---@class AppDesktop : Screen
---@field home Object
---@field main Object
---@field header Object
---@field toast_control Control
---@field main_control Control
local AppDesktop = {}

function AppDesktop.on_power_off() end

function AppDesktop.on_power_restored() end

---@param msg string
---@param duration integer?  # Default = 0
function AppDesktop.toast(msg, duration) end
