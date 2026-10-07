---@meta _
-- Generated API for game version 0.13.1

---@class TenaboltPresetRow : HBoxContainer
---@field swatch ColorRect
---@field name_label Label
---@field apply_button Button
---@field remove_button Button
---@field values_label Label
---@field preset table<any,any>
local TenaboltPresetRow = {}

---@param num integer
---@param p table<any,any>
function TenaboltPresetRow.show_preset(num, p) end

---@param dcc DayCycleController
function TenaboltPresetRow.show_color(dcc) end
