---@meta _
-- Generated API for game version 0.9.1

---@class ElevatorPanelA : Area2D
---@field panel_text string
---@field floor_selector ItemList
---@field current_call_dst integer
---@field called_dst integer
---@field current_floor Location
---@field current_call_time number
local ElevatorPanelA = {}

---@param time_mult_delta number
function ElevatorPanelA.time_mult_updated(time_mult_delta) end
