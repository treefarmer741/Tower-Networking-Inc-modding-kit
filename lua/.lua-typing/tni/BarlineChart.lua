---@meta _
-- Generated API for game version 0.9.1

---@class BarlineChart : Node2D
---@field bar_chart Object
---@field chart_title string
---@field x_axis_label string
---@field y_axis_label_left string
---@field y_axis_label_right string
---@field vertical_labels boolean
---@field vertical_y_labels boolean
---@field x_label_margin number
---@field y_label_margin number
---@field y_tick_margin number
---@field categories Array<any>
---@field show_bar_labels boolean
---@field show_line_labels boolean
---@field bar_label_format string
---@field line_label_format string
---@field line_color Color
---@field bar_colors Array<any>
---@field show_line_chart boolean
local BarlineChart = {}

function BarlineChart.generate_dataset_colors() end

---@param category_array Object
---@param bar_dataset Object
---@param line_values Object
---@param line_label Object
function BarlineChart.setup_visual(category_array, bar_dataset, line_values, line_label) end

function BarlineChart.update_chart() end
