---@meta _
-- Generated API for game version 0.13.4

---@class DeviceBarRow : HBoxContainer
---@field name_label Label
---@field floor_label Label
---@field hw_label Label
---@field value_label Label
local DeviceBarRow = {}

---@param device_name string
---@param floor_num integer
---@param hw string
---@param value_text string
---@param value_color Color
function DeviceBarRow.show_device(device_name, floor_num, hw, value_text, value_color) end
