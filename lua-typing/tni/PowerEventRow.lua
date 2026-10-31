---@meta _
-- Generated API for game version 0.13.4

---@class PowerEventRow : HBoxContainer
---@field floor_label Label
---@field event_label Label
---@field time_label Label
local PowerEventRow = {}

---@param floor_num integer
---@param event_name string
---@param time_range string
---@param started boolean
function PowerEventRow.show_event(floor_num, event_name, time_range, started) end
