---@meta _
-- Generated API for game version 0.13.4

---@class Towerdeviceunits : DashboardApp
---@field WARNING_FONT_COLOR Color # Constant value: (0.5922, 0.0, 0.0, 1.0)
---@field ENDING_DAYS integer # Constant value: 5
---@field BAR_COUNT integer # Constant value: 15
---@field refresh_timer Timer
---@field view_label Label
---@field view_toggle Button
---@field devices_value Label
---@field autosvc_value Label
---@field migration_value Label
---@field expired_value Label
---@field ending_value Label
---@field daily_fee_value Label
---@field bar_rows VBoxContainer
---@field bar_row_scene PackedScene
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Towerdeviceunits = {}

function Towerdeviceunits.launch() end

function Towerdeviceunits.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Towerdeviceunits.toast(msg, duration) end

---@return Object
function Towerdeviceunits.get_main_pane() end

function Towerdeviceunits.minimize() end

function Towerdeviceunits.launch() end
