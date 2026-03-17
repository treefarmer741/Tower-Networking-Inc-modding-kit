---@meta _
-- Generated API for game version 0.10.0

---@class MainDashboard : Node
---@field toast_control Control
---@field launcher_container Container
---@field launcher Container
local MainDashboard = {}

---@param c DashboardAppLauncher
---@param add_sal_as_child boolean?  # Default = false
function MainDashboard.setup_launcher(c, add_sal_as_child) end

---@param msg string
---@param duration integer?  # Default = 0
function MainDashboard.toast(msg, duration) end

function MainDashboard.show_home() end

function MainDashboard.show_dashboard() end
