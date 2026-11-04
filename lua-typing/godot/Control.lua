---@meta _
-- Generated API for game version 0.10.0

---@class Control : CanvasItem
---@field clip_contents boolean
---@field custom_minimum_size Vector2
---@field layout_direction integer
---@field layout_mode integer
---@field anchors_preset integer
---@field anchor_left number
---@field anchor_top number
---@field anchor_right number
---@field anchor_bottom number
---@field offset_left number
---@field offset_top number
---@field offset_right number
---@field offset_bottom number
---@field grow_horizontal integer
---@field grow_vertical integer
---@field size Vector2
---@field position Vector2
---@field global_position Vector2
---@field rotation number
---@field rotation_degrees number
---@field scale Vector2
---@field pivot_offset Vector2
---@field size_flags_horizontal integer
---@field size_flags_vertical integer
---@field size_flags_stretch_ratio number
---@field localize_numeral_system boolean
---@field auto_translate boolean
---@field tooltip_text string
---@field tooltip_auto_translate_mode integer
---@field focus_neighbor_left string
---@field focus_neighbor_top string
---@field focus_neighbor_right string
---@field focus_neighbor_bottom string
---@field focus_next string
---@field focus_previous string
---@field focus_mode integer
---@field focus_behavior_recursive integer
---@field mouse_filter integer
---@field mouse_behavior_recursive integer
---@field mouse_force_pass_scroll_events boolean
---@field mouse_default_cursor_shape integer
---@field shortcut_context Object
---@field accessibility_name string
---@field accessibility_description string
---@field accessibility_live integer
---@field accessibility_controls_nodes Array<NodePath>
---@field accessibility_described_by_nodes Array<NodePath>
---@field accessibility_labeled_by_nodes Array<NodePath>
---@field accessibility_flow_to_nodes Array<NodePath>
---@field theme Theme
---@field theme_type_variation string
local Control = {}

function Control.accept_event() end

---@return Vector2
function Control.get_minimum_size() end

---@return Vector2
function Control.get_combined_minimum_size() end

---@param preset Control.LayoutPreset
---@param keep_offsets boolean?  # Default = false
function Control.set_anchors_preset(preset, keep_offsets) end

---@param preset Control.LayoutPreset
---@param resize_mode Control.LayoutPresetMode?  # Default = 0
---@param margin integer?  # Default = 0
function Control.set_offsets_preset(preset, resize_mode, margin) end

---@param preset Control.LayoutPreset
---@param resize_mode Control.LayoutPresetMode?  # Default = 0
---@param margin integer?  # Default = 0
function Control.set_anchors_and_offsets_preset(preset, resize_mode, margin) end

---@param side Side
---@param anchor number
---@param keep_offset boolean?  # Default = false
---@param push_opposite_anchor boolean?  # Default = true
function Control.set_anchor(side, anchor, keep_offset, push_opposite_anchor) end

---@param side Side
---@return number
function Control.get_anchor(side) end

---@param side Side
---@param offset number
function Control.set_offset(side, offset) end

---@param offset Side
---@return number
function Control.get_offset(offset) end

---@param side Side
---@param anchor number
---@param offset number
---@param push_opposite_anchor boolean?  # Default = false
function Control.set_anchor_and_offset(side, anchor, offset, push_opposite_anchor) end

---@param position Vector2
function Control.set_begin(position) end

---@param position Vector2
function Control.set_end(position) end

---@param position Vector2
---@param keep_offsets boolean?  # Default = false
function Control.set_position(position, keep_offsets) end

---@param size Vector2
---@param keep_offsets boolean?  # Default = false
function Control.set_size(size, keep_offsets) end

function Control.reset_size() end

---@param size Vector2
function Control.set_custom_minimum_size(size) end

---@param position Vector2
---@param keep_offsets boolean?  # Default = false
function Control.set_global_position(position, keep_offsets) end

---@param radians number
function Control.set_rotation(radians) end

---@param degrees number
function Control.set_rotation_degrees(degrees) end

---@param scale Vector2
function Control.set_scale(scale) end

---@param pivot_offset Vector2
function Control.set_pivot_offset(pivot_offset) end

---@return Vector2
function Control.get_begin() end

---@return Vector2
function Control.get_end() end

---@return Vector2
function Control.get_position() end

---@return Vector2
function Control.get_size() end

---@return number
function Control.get_rotation() end

---@return number
function Control.get_rotation_degrees() end

---@return Vector2
function Control.get_scale() end

---@return Vector2
function Control.get_pivot_offset() end

---@return Vector2
function Control.get_custom_minimum_size() end

---@return Vector2
function Control.get_parent_area_size() end

---@return Vector2
function Control.get_global_position() end

---@return Vector2
function Control.get_screen_position() end

---@return Rect2
function Control.get_rect() end

---@return Rect2
function Control.get_global_rect() end

---@param mode Control.FocusMode
function Control.set_focus_mode(mode) end

---@return Control.FocusMode
function Control.get_focus_mode() end

---@return Control.FocusMode
function Control.get_focus_mode_with_override() end

---@param focus_behavior_recursive Control.FocusBehaviorRecursive
function Control.set_focus_behavior_recursive(focus_behavior_recursive) end

---@return Control.FocusBehaviorRecursive
function Control.get_focus_behavior_recursive() end

---@return boolean
function Control.has_focus() end

function Control.grab_focus() end

function Control.release_focus() end

---@return Control
function Control.find_prev_valid_focus() end

---@return Control
function Control.find_next_valid_focus() end

---@param side Side
---@return Control
function Control.find_valid_focus_neighbor(side) end

---@param flags Control.SizeFlags
function Control.set_h_size_flags(flags) end

---@return Control.SizeFlags
function Control.get_h_size_flags() end

---@param ratio number
function Control.set_stretch_ratio(ratio) end

---@return number
function Control.get_stretch_ratio() end

---@param flags Control.SizeFlags
function Control.set_v_size_flags(flags) end

---@return Control.SizeFlags
function Control.get_v_size_flags() end

---@param theme Theme
function Control.set_theme(theme) end

---@return Theme
function Control.get_theme() end

---@param theme_type string
function Control.set_theme_type_variation(theme_type) end

---@return string
function Control.get_theme_type_variation() end

function Control.begin_bulk_theme_override() end

function Control.end_bulk_theme_override() end

---@param name string
---@param texture Texture2D
function Control.add_theme_icon_override(name, texture) end

---@param name string
---@param stylebox StyleBox
function Control.add_theme_stylebox_override(name, stylebox) end

---@param name string
---@param font Font
function Control.add_theme_font_override(name, font) end

---@param name string
---@param font_size integer
function Control.add_theme_font_size_override(name, font_size) end

---@param name string
---@param color Color
function Control.add_theme_color_override(name, color) end

---@param name string
---@param constant integer
function Control.add_theme_constant_override(name, constant) end

---@param name string
function Control.remove_theme_icon_override(name) end

---@param name string
function Control.remove_theme_stylebox_override(name) end

---@param name string
function Control.remove_theme_font_override(name) end

---@param name string
function Control.remove_theme_font_size_override(name) end

---@param name string
function Control.remove_theme_color_override(name) end

---@param name string
function Control.remove_theme_constant_override(name) end

---@param name string
---@param theme_type string?  # Default = 
---@return Texture2D
function Control.get_theme_icon(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return StyleBox
function Control.get_theme_stylebox(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return Font
function Control.get_theme_font(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return integer
function Control.get_theme_font_size(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return Color
function Control.get_theme_color(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return integer
function Control.get_theme_constant(name, theme_type) end

---@param name string
---@return boolean
function Control.has_theme_icon_override(name) end

---@param name string
---@return boolean
function Control.has_theme_stylebox_override(name) end

---@param name string
---@return boolean
function Control.has_theme_font_override(name) end

---@param name string
---@return boolean
function Control.has_theme_font_size_override(name) end

---@param name string
---@return boolean
function Control.has_theme_color_override(name) end

---@param name string
---@return boolean
function Control.has_theme_constant_override(name) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_icon(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_stylebox(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_font(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_font_size(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_color(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Control.has_theme_constant(name, theme_type) end

---@return number
function Control.get_theme_default_base_scale() end

---@return Font
function Control.get_theme_default_font() end

---@return integer
function Control.get_theme_default_font_size() end

---@return Control
function Control.get_parent_control() end

---@param direction Control.GrowDirection
function Control.set_h_grow_direction(direction) end

---@return Control.GrowDirection
function Control.get_h_grow_direction() end

---@param direction Control.GrowDirection
function Control.set_v_grow_direction(direction) end

---@return Control.GrowDirection
function Control.get_v_grow_direction() end

---@param mode Node.AutoTranslateMode
function Control.set_tooltip_auto_translate_mode(mode) end

---@return Node.AutoTranslateMode
function Control.get_tooltip_auto_translate_mode() end

---@param hint string
function Control.set_tooltip_text(hint) end

---@return string
function Control.get_tooltip_text() end

---@param at_position Vector2?  # Default = (0.0, 0.0)
---@return string
function Control.get_tooltip(at_position) end

---@param shape Control.CursorShape
function Control.set_default_cursor_shape(shape) end

---@return Control.CursorShape
function Control.get_default_cursor_shape() end

---@param position Vector2?  # Default = (0.0, 0.0)
---@return Control.CursorShape
function Control.get_cursor_shape(position) end

---@param side Side
---@param neighbor string
function Control.set_focus_neighbor(side, neighbor) end

---@param side Side
---@return string
function Control.get_focus_neighbor(side) end

---@param next string
function Control.set_focus_next(next) end

---@return string
function Control.get_focus_next() end

---@param previous string
function Control.set_focus_previous(previous) end

---@return string
function Control.get_focus_previous() end

---@param data Object
---@param preview Control
function Control.force_drag(data, preview) end

function Control.accessibility_drag() end

function Control.accessibility_drop() end

---@param name string
function Control.set_accessibility_name(name) end

---@return string
function Control.get_accessibility_name() end

---@param description string
function Control.set_accessibility_description(description) end

---@return string
function Control.get_accessibility_description() end

---@param mode DisplayServer.AccessibilityLiveMode
function Control.set_accessibility_live(mode) end

---@return DisplayServer.AccessibilityLiveMode
function Control.get_accessibility_live() end

---@param node_path Array<NodePath>
function Control.set_accessibility_controls_nodes(node_path) end

---@return Array<NodePath>
function Control.get_accessibility_controls_nodes() end

---@param node_path Array<NodePath>
function Control.set_accessibility_described_by_nodes(node_path) end

---@return Array<NodePath>
function Control.get_accessibility_described_by_nodes() end

---@param node_path Array<NodePath>
function Control.set_accessibility_labeled_by_nodes(node_path) end

---@return Array<NodePath>
function Control.get_accessibility_labeled_by_nodes() end

---@param node_path Array<NodePath>
function Control.set_accessibility_flow_to_nodes(node_path) end

---@return Array<NodePath>
function Control.get_accessibility_flow_to_nodes() end

---@param filter Control.MouseFilter
function Control.set_mouse_filter(filter) end

---@return Control.MouseFilter
function Control.get_mouse_filter() end

---@return Control.MouseFilter
function Control.get_mouse_filter_with_override() end

---@param mouse_behavior_recursive Control.MouseBehaviorRecursive
function Control.set_mouse_behavior_recursive(mouse_behavior_recursive) end

---@return Control.MouseBehaviorRecursive
function Control.get_mouse_behavior_recursive() end

---@param force_pass_scroll_events boolean
function Control.set_force_pass_scroll_events(force_pass_scroll_events) end

---@return boolean
function Control.is_force_pass_scroll_events() end

---@param enable boolean
function Control.set_clip_contents(enable) end

---@return boolean
function Control.is_clipping_contents() end

function Control.grab_click_focus() end

---@param drag_func (Callable|function)
---@param can_drop_func (Callable|function)
---@param drop_func (Callable|function)
function Control.set_drag_forwarding(drag_func, can_drop_func, drop_func) end

---@param control Control
function Control.set_drag_preview(control) end

---@return boolean
function Control.is_drag_successful() end

---@param position Vector2
function Control.warp_mouse(position) end

---@param node Node
function Control.set_shortcut_context(node) end

---@return Node
function Control.get_shortcut_context() end

function Control.update_minimum_size() end

---@param direction Control.LayoutDirection
function Control.set_layout_direction(direction) end

---@return Control.LayoutDirection
function Control.get_layout_direction() end

---@return boolean
function Control.is_layout_rtl() end

---@param enable boolean
function Control.set_auto_translate(enable) end

---@return boolean
function Control.is_auto_translating() end

---@param enable boolean
function Control.set_localize_numeral_system(enable) end

---@return boolean
function Control.is_localizing_numeral_system() end
