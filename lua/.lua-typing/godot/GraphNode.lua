---@meta _
-- Generated API for game version 0.9.1

---@class GraphNode : GraphElement
---@field title string
---@field ignore_invalid_connection_type boolean
---@field slots_focus_mode integer
local GraphNode = {}

---@param title string
function GraphNode.set_title(title) end

---@return string
function GraphNode.get_title() end

---@return HBoxContainer
function GraphNode.get_titlebar_hbox() end

---@param slot_index integer
---@param enable_left_port boolean
---@param type_left integer
---@param color_left Color
---@param enable_right_port boolean
---@param type_right integer
---@param color_right Color
---@param custom_icon_left Texture2D?  # Default = <Object#null>
---@param custom_icon_right Texture2D?  # Default = <Object#null>
---@param draw_stylebox boolean?  # Default = true
function GraphNode.set_slot(slot_index, enable_left_port, type_left, color_left, enable_right_port, type_right, color_right, custom_icon_left, custom_icon_right, draw_stylebox) end

---@param slot_index integer
function GraphNode.clear_slot(slot_index) end

function GraphNode.clear_all_slots() end

---@param slot_index integer
---@return boolean
function GraphNode.is_slot_enabled_left(slot_index) end

---@param slot_index integer
---@param enable boolean
function GraphNode.set_slot_enabled_left(slot_index, enable) end

---@param slot_index integer
---@param type integer
function GraphNode.set_slot_type_left(slot_index, type) end

---@param slot_index integer
---@return integer
function GraphNode.get_slot_type_left(slot_index) end

---@param slot_index integer
---@param color Color
function GraphNode.set_slot_color_left(slot_index, color) end

---@param slot_index integer
---@return Color
function GraphNode.get_slot_color_left(slot_index) end

---@param slot_index integer
---@param custom_icon Texture2D
function GraphNode.set_slot_custom_icon_left(slot_index, custom_icon) end

---@param slot_index integer
---@return Texture2D
function GraphNode.get_slot_custom_icon_left(slot_index) end

---@param slot_index integer
---@return boolean
function GraphNode.is_slot_enabled_right(slot_index) end

---@param slot_index integer
---@param enable boolean
function GraphNode.set_slot_enabled_right(slot_index, enable) end

---@param slot_index integer
---@param type integer
function GraphNode.set_slot_type_right(slot_index, type) end

---@param slot_index integer
---@return integer
function GraphNode.get_slot_type_right(slot_index) end

---@param slot_index integer
---@param color Color
function GraphNode.set_slot_color_right(slot_index, color) end

---@param slot_index integer
---@return Color
function GraphNode.get_slot_color_right(slot_index) end

---@param slot_index integer
---@param custom_icon Texture2D
function GraphNode.set_slot_custom_icon_right(slot_index, custom_icon) end

---@param slot_index integer
---@return Texture2D
function GraphNode.get_slot_custom_icon_right(slot_index) end

---@param slot_index integer
---@return boolean
function GraphNode.is_slot_draw_stylebox(slot_index) end

---@param slot_index integer
---@param enable boolean
function GraphNode.set_slot_draw_stylebox(slot_index, enable) end

---@param ignore boolean
function GraphNode.set_ignore_invalid_connection_type(ignore) end

---@return boolean
function GraphNode.is_ignoring_valid_connection_type() end

---@param focus_mode Control.FocusMode
function GraphNode.set_slots_focus_mode(focus_mode) end

---@return Control.FocusMode
function GraphNode.get_slots_focus_mode() end

---@return integer
function GraphNode.get_input_port_count() end

---@param port_idx integer
---@return Vector2
function GraphNode.get_input_port_position(port_idx) end

---@param port_idx integer
---@return integer
function GraphNode.get_input_port_type(port_idx) end

---@param port_idx integer
---@return Color
function GraphNode.get_input_port_color(port_idx) end

---@param port_idx integer
---@return integer
function GraphNode.get_input_port_slot(port_idx) end

---@return integer
function GraphNode.get_output_port_count() end

---@param port_idx integer
---@return Vector2
function GraphNode.get_output_port_position(port_idx) end

---@param port_idx integer
---@return integer
function GraphNode.get_output_port_type(port_idx) end

---@param port_idx integer
---@return Color
function GraphNode.get_output_port_color(port_idx) end

---@param port_idx integer
---@return integer
function GraphNode.get_output_port_slot(port_idx) end
