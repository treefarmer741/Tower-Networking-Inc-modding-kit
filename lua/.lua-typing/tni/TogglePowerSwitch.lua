---@meta _
-- Generated API for game version 0.9.1

---@class TogglePowerSwitch : Area2D
---@field pointlight2d PointLight2D
---@field physical_state boolean
---@field energy number
---@field current_load integer
---@field power_controller PowerController
---@field default_intent boolean
---@field infinite_power_mode boolean
---@field light_color Color
---@field power Power
---@field old_state boolean
---@field state boolean
---@field tooltip_text string
local TogglePowerSwitch = {}

---@param _clicker MultiplayerMouse
function TogglePowerSwitch.toggle(_clicker) end

---@param src MultiplayerMouse
function TogglePowerSwitch.click(src) end
