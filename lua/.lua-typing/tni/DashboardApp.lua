---@meta _
-- Generated API for game version 0.9.1

---@class DashboardApp : Container
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local DashboardApp = {}

function DashboardApp.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function DashboardApp.toast(msg, duration) end

---@return Object
function DashboardApp.get_main_pane() end

function DashboardApp.minimize() end

function DashboardApp.launch() end
