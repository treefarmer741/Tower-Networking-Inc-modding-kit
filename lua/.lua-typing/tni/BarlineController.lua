---@meta _
-- Generated API for game version 0.9.1

---@class BarlineController : Control
---@field chart_title string
---@field x_axis_label string
---@field y_axis_label_left string
---@field y_axis_label_right string
---@field title_font_size integer
---@field show_right_axis boolean
---@field bar_width number
---@field bar_spacing number
---@field group_width_ratio number
---@field vertical_x_labels boolean
---@field show_line_chart boolean
---@field line_color Color
---@field line_width number
---@field show_line_points boolean
---@field line_point_radius number
---@field axis_vertical_y_labels boolean
---@field axis_x_label_margin number
---@field axis_x_label_height number
---@field axis_y_label_spacing_left number
---@field axis_y_label_spacing_right number
---@field axis_y_label_height_left number
---@field axis_y_label_height_right number
---@field axis_y_tick_margin number
---@field axis_y_tick_width number
---@field font_size integer
---@field show_bar_labels boolean
---@field show_line_labels boolean
---@field bar_label_format string
---@field line_label_format string
---@field bar_group_spacing number
---@field bar_spacing_within_group number
---@field group_spacing_ratio Object
---@field categories Object
---@field datasets Object
---@field line_values Object
---@field line_label Object
---@field colors Object
---@field legend_bottom_margin Object
local BarlineController = {}

---@param pos Object
---@param text Object
---@param alignment Object?  # Default = 0
---@param img_size Object?  # Default = 16
function BarlineController.draw_text_at(pos, text, alignment, img_size) end

---@param new_categories Object
---@param new_values Object
---@param new_colors Object?  # Default = <null>
---@param new_title Object?  # Default = 
---@param new_x_label Object?  # Default = 
---@param new_y_label Object?  # Default = 
function BarlineController.set_data(new_categories, new_values, new_colors, new_title, new_x_label, new_y_label) end

---@param new_categories Object
---@param new_datasets Object
---@param new_colors Object?  # Default = <null>
function BarlineController.set_bar_data(new_categories, new_datasets, new_colors) end

---@param new_line_values Object
---@param new_line_label Object?  # Default = Line
function BarlineController.set_line_data(new_line_values, new_line_label) end

---@param new_categories Object
---@param new_datasets Object
---@param new_line_values Object
---@param new_line_label Object?  # Default = Line
---@param new_colors Object?  # Default = <null>
---@param spacing_options Object?  # Default = <null>
function BarlineController.set_chart_data(new_categories, new_datasets, new_line_values, new_line_label, new_colors, spacing_options) end
