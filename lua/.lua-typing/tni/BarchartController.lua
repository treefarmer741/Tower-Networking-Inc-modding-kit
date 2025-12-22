---@meta _
-- Generated API for game version 0.9.1

---@class BarchartController : Control
---@field chart_title string
---@field x_axis_label string
---@field y_axis_label string
---@field bar_width number
---@field bar_spacing number
---@field font_size integer
---@field use_sample_data boolean
---@field categories Object
---@field values Object
---@field colors Object
local BarchartController = {}

---@param new_categories Object
---@param new_values Object
---@param new_colors Object?  # Default = <null>
function BarchartController.set_data(new_categories, new_values, new_colors) end
