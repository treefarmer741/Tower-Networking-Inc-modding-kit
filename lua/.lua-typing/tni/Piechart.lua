---@meta _
-- Generated API for game version 0.9.1

---@class Piechart : Sprite2D
---@field pie_sprite Object
---@field relative_size number
---@field blur_strength number
---@field label_text_color Color
---@field legend_text_color Color
---@field use_segment_color_for_labels boolean
---@field use_segment_color_for_legend boolean
---@field show_legend boolean
---@field legend_position Vector2
---@field legend_position_preset integer
---@field legend_font_size integer
---@field legend_item_spacing number
---@field show_table boolean
---@field table_position_preset integer
---@field table_position Vector2
---@field table_font_size integer
---@field table_row_height number
---@field table_padding number
---@field table_header_enabled boolean
---@field table_sort_by_value boolean
---@field table_background_color Color
---@field table_border_color Color
---@field table_header_color Color
---@field table_alternate_row_color Color
---@field segment_names Array<any>
---@field segment_values Array<any>
---@field segment_colors Array<any>
---@field table_container Control
---@field legend_container Control
local Piechart = {}

function Piechart.generate_segment_colors() end

---@param names Array<any>
---@param values Array<any>
---@param colors Array<any>?  # Default = <null>
function Piechart.set_segments(names, values, colors) end

---@param names Array<any>
---@param values Array<any>
---@param colors Array<any>?  # Default = <null>
---@return Object
function Piechart.process_top_segments(names, values, colors) end

function Piechart.update_pie_chart() end

function Piechart.add_percentage_table() end

---@param num Object
---@return Object
function Piechart.format_number(num) end

function Piechart.add_legend() end

function Piechart.clear_labels() end
