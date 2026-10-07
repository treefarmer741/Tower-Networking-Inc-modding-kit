---@meta _
-- Generated API for game version 0.13.1

---@class TenaboltFloorRow : HBoxContainer
---@field floor_label Label
---@field event_label Label
---@field time_label Label
local TenaboltFloorRow = {}

---@param floor_num integer
---@param event_name string
---@param time_range string
---@param color Color
---@param started boolean
function TenaboltFloorRow.show_event(floor_num, event_name, time_range, color, started) end
