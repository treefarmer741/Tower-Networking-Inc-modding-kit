---@meta _
-- Generated API for game version 0.9.1

---@class GraphEdit : Control
---@field scroll_offset Vector2
---@field show_grid boolean
---@field grid_pattern integer
---@field snapping_enabled boolean
---@field snapping_distance integer
---@field panning_scheme integer
---@field right_disconnects boolean
---@field type_names table<integer,string>
---@field connection_lines_curvature number
---@field connection_lines_thickness number
---@field connection_lines_antialiased boolean
---@field connections Array<27/0:>
---@field zoom number
---@field zoom_min number
---@field zoom_max number
---@field zoom_step number
---@field minimap_enabled boolean
---@field minimap_size Vector2
---@field minimap_opacity number
---@field show_menu boolean
---@field show_zoom_label boolean
---@field show_zoom_buttons boolean
---@field show_grid_buttons boolean
---@field show_minimap_button boolean
---@field show_arrange_button boolean
local GraphEdit = {}

---@param from_node string
---@param from_port integer
---@param to_node string
---@param to_port integer
---@param keep_alive boolean?  # Default = false
---@return Error
function GraphEdit.connect_node(from_node, from_port, to_node, to_port, keep_alive) end

---@param from_node string
---@param from_port integer
---@param to_node string
---@param to_port integer
---@return boolean
function GraphEdit.is_node_connected(from_node, from_port, to_node, to_port) end

---@param from_node string
---@param from_port integer
---@param to_node string
---@param to_port integer
function GraphEdit.disconnect_node(from_node, from_port, to_node, to_port) end

---@param from_node string
---@param from_port integer
---@param to_node string
---@param to_port integer
---@param amount number
function GraphEdit.set_connection_activity(from_node, from_port, to_node, to_port, amount) end

---@param connections Array<Dictionary>
function GraphEdit.set_connections(connections) end

---@return Array<Dictionary>
function GraphEdit.get_connection_list() end

---@param from_node string
---@param from_port integer
---@return integer
function GraphEdit.get_connection_count(from_node, from_port) end

---@param point Vector2
---@param max_distance number?  # Default = 4.0
---@return table<any,any>
function GraphEdit.get_closest_connection_at_point(point, max_distance) end

---@param node string
---@return Array<Dictionary>
function GraphEdit.get_connection_list_from_node(node) end

---@param rect Rect2
---@return Array<Dictionary>
function GraphEdit.get_connections_intersecting_with_rect(rect) end

function GraphEdit.clear_connections() end

function GraphEdit.force_connection_drag_end() end

---@return Vector2
function GraphEdit.get_scroll_offset() end

---@param offset Vector2
function GraphEdit.set_scroll_offset(offset) end

---@param type integer
function GraphEdit.add_valid_right_disconnect_type(type) end

---@param type integer
function GraphEdit.remove_valid_right_disconnect_type(type) end

---@param type integer
function GraphEdit.add_valid_left_disconnect_type(type) end

---@param type integer
function GraphEdit.remove_valid_left_disconnect_type(type) end

---@param from_type integer
---@param to_type integer
function GraphEdit.add_valid_connection_type(from_type, to_type) end

---@param from_type integer
---@param to_type integer
function GraphEdit.remove_valid_connection_type(from_type, to_type) end

---@param from_type integer
---@param to_type integer
---@return boolean
function GraphEdit.is_valid_connection_type(from_type, to_type) end

---@param from_node Vector2
---@param to_node Vector2
---@return PackedVector2Array
function GraphEdit.get_connection_line(from_node, to_node) end

---@param element string
---@param frame string
function GraphEdit.attach_graph_element_to_frame(element, frame) end

---@param element string
function GraphEdit.detach_graph_element_from_frame(element) end

---@param element string
---@return GraphFrame
function GraphEdit.get_element_frame(element) end

---@param frame string
---@return Array<StringName>
function GraphEdit.get_attached_nodes_of_frame(frame) end

---@param scheme GraphEdit.PanningScheme
function GraphEdit.set_panning_scheme(scheme) end

---@return GraphEdit.PanningScheme
function GraphEdit.get_panning_scheme() end

---@param zoom number
function GraphEdit.set_zoom(zoom) end

---@return number
function GraphEdit.get_zoom() end

---@param zoom_min number
function GraphEdit.set_zoom_min(zoom_min) end

---@return number
function GraphEdit.get_zoom_min() end

---@param zoom_max number
function GraphEdit.set_zoom_max(zoom_max) end

---@return number
function GraphEdit.get_zoom_max() end

---@param zoom_step number
function GraphEdit.set_zoom_step(zoom_step) end

---@return number
function GraphEdit.get_zoom_step() end

---@param enable boolean
function GraphEdit.set_show_grid(enable) end

---@return boolean
function GraphEdit.is_showing_grid() end

---@param pattern GraphEdit.GridPattern
function GraphEdit.set_grid_pattern(pattern) end

---@return GraphEdit.GridPattern
function GraphEdit.get_grid_pattern() end

---@param enable boolean
function GraphEdit.set_snapping_enabled(enable) end

---@return boolean
function GraphEdit.is_snapping_enabled() end

---@param pixels integer
function GraphEdit.set_snapping_distance(pixels) end

---@return integer
function GraphEdit.get_snapping_distance() end

---@param curvature number
function GraphEdit.set_connection_lines_curvature(curvature) end

---@return number
function GraphEdit.get_connection_lines_curvature() end

---@param pixels number
function GraphEdit.set_connection_lines_thickness(pixels) end

---@return number
function GraphEdit.get_connection_lines_thickness() end

---@param pixels boolean
function GraphEdit.set_connection_lines_antialiased(pixels) end

---@return boolean
function GraphEdit.is_connection_lines_antialiased() end

---@param size Vector2
function GraphEdit.set_minimap_size(size) end

---@return Vector2
function GraphEdit.get_minimap_size() end

---@param opacity number
function GraphEdit.set_minimap_opacity(opacity) end

---@return number
function GraphEdit.get_minimap_opacity() end

---@param enable boolean
function GraphEdit.set_minimap_enabled(enable) end

---@return boolean
function GraphEdit.is_minimap_enabled() end

---@param hidden boolean
function GraphEdit.set_show_menu(hidden) end

---@return boolean
function GraphEdit.is_showing_menu() end

---@param enable boolean
function GraphEdit.set_show_zoom_label(enable) end

---@return boolean
function GraphEdit.is_showing_zoom_label() end

---@param hidden boolean
function GraphEdit.set_show_grid_buttons(hidden) end

---@return boolean
function GraphEdit.is_showing_grid_buttons() end

---@param hidden boolean
function GraphEdit.set_show_zoom_buttons(hidden) end

---@return boolean
function GraphEdit.is_showing_zoom_buttons() end

---@param hidden boolean
function GraphEdit.set_show_minimap_button(hidden) end

---@return boolean
function GraphEdit.is_showing_minimap_button() end

---@param hidden boolean
function GraphEdit.set_show_arrange_button(hidden) end

---@return boolean
function GraphEdit.is_showing_arrange_button() end

---@param enable boolean
function GraphEdit.set_right_disconnects(enable) end

---@return boolean
function GraphEdit.is_right_disconnects_enabled() end

---@param type_names table<any,any>
function GraphEdit.set_type_names(type_names) end

---@return table<any,any>
function GraphEdit.get_type_names() end

---@return HBoxContainer
function GraphEdit.get_menu_hbox() end

function GraphEdit.arrange_nodes() end

---@param node Node
function GraphEdit.set_selected(node) end
