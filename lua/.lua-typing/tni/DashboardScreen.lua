---@meta _
-- Generated API for game version 0.9.1

---@class DashboardScreen : Container
---@field toast_control Control
---@field main_control Control
---@field launcher Object
local DashboardScreen = {}

---@param msg string
---@param duration integer?  # Default = 0
function DashboardScreen.toast(msg, duration) end

function DashboardScreen.on_power_off() end

function DashboardScreen.on_power_on() end
