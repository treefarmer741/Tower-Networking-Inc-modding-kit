---@meta _
-- Generated API for game version 0.9.1

---@class Window : Viewport
---@field mode integer
---@field title string
---@field initial_position integer
---@field position Vector2i
---@field size Vector2i
---@field current_screen integer
---@field mouse_passthrough_polygon PackedVector2Array
---@field visible boolean
---@field wrap_controls boolean
---@field transient boolean
---@field transient_to_focused boolean
---@field exclusive boolean
---@field unresizable boolean
---@field borderless boolean
---@field always_on_top boolean
---@field transparent boolean
---@field unfocusable boolean
---@field popup_window boolean
---@field extend_to_title boolean
---@field mouse_passthrough boolean
---@field sharp_corners boolean
---@field exclude_from_capture boolean
---@field popup_wm_hint boolean
---@field minimize_disabled boolean
---@field maximize_disabled boolean
---@field force_native boolean
---@field min_size Vector2i
---@field max_size Vector2i
---@field keep_title_visible boolean
---@field content_scale_size Vector2i
---@field content_scale_mode integer
---@field content_scale_aspect integer
---@field content_scale_stretch integer
---@field content_scale_factor number
---@field auto_translate boolean
---@field accessibility_name string
---@field accessibility_description string
---@field theme Theme
---@field theme_type_variation string
local Window = {}

---@param title string
function Window.set_title(title) end

---@return string
function Window.get_title() end

---@param initial_position Window.WindowInitialPosition
function Window.set_initial_position(initial_position) end

---@return Window.WindowInitialPosition
function Window.get_initial_position() end

---@param index integer
function Window.set_current_screen(index) end

---@return integer
function Window.get_current_screen() end

---@param position Vector2i
function Window.set_position(position) end

---@return Vector2i
function Window.get_position() end

function Window.move_to_center() end

---@param size Vector2i
function Window.set_size(size) end

---@return Vector2i
function Window.get_size() end

function Window.reset_size() end

---@return Vector2i
function Window.get_position_with_decorations() end

---@return Vector2i
function Window.get_size_with_decorations() end

---@param max_size Vector2i
function Window.set_max_size(max_size) end

---@return Vector2i
function Window.get_max_size() end

---@param min_size Vector2i
function Window.set_min_size(min_size) end

---@return Vector2i
function Window.get_min_size() end

---@param mode Window.Mode
function Window.set_mode(mode) end

---@return Window.Mode
function Window.get_mode() end

---@param flag Window.Flags
---@param enabled boolean
function Window.set_flag(flag, enabled) end

---@param flag Window.Flags
---@return boolean
function Window.get_flag(flag) end

---@return boolean
function Window.is_maximize_allowed() end

function Window.request_attention() end

function Window.move_to_foreground() end

---@param visible boolean
function Window.set_visible(visible) end

---@return boolean
function Window.is_visible() end

function Window.hide() end

function Window.show() end

---@param transient boolean
function Window.set_transient(transient) end

---@return boolean
function Window.is_transient() end

---@param enable boolean
function Window.set_transient_to_focused(enable) end

---@return boolean
function Window.is_transient_to_focused() end

---@param exclusive boolean
function Window.set_exclusive(exclusive) end

---@return boolean
function Window.is_exclusive() end

---@param unparent boolean
function Window.set_unparent_when_invisible(unparent) end

---@return boolean
function Window.can_draw() end

---@return boolean
function Window.has_focus() end

function Window.grab_focus() end

function Window.start_drag() end

---@param edge DisplayServer.WindowResizeEdge
function Window.start_resize(edge) end

---@param active boolean
function Window.set_ime_active(active) end

---@param position Vector2i
function Window.set_ime_position(position) end

---@return boolean
function Window.is_embedded() end

---@return Vector2
function Window.get_contents_minimum_size() end

---@param force_native boolean
function Window.set_force_native(force_native) end

---@return boolean
function Window.get_force_native() end

---@param size Vector2i
function Window.set_content_scale_size(size) end

---@return Vector2i
function Window.get_content_scale_size() end

---@param mode Window.ContentScaleMode
function Window.set_content_scale_mode(mode) end

---@return Window.ContentScaleMode
function Window.get_content_scale_mode() end

---@param aspect Window.ContentScaleAspect
function Window.set_content_scale_aspect(aspect) end

---@return Window.ContentScaleAspect
function Window.get_content_scale_aspect() end

---@param stretch Window.ContentScaleStretch
function Window.set_content_scale_stretch(stretch) end

---@return Window.ContentScaleStretch
function Window.get_content_scale_stretch() end

---@param title_visible boolean
function Window.set_keep_title_visible(title_visible) end

---@return boolean
function Window.get_keep_title_visible() end

---@param factor number
function Window.set_content_scale_factor(factor) end

---@return number
function Window.get_content_scale_factor() end

---@param polygon PackedVector2Array
function Window.set_mouse_passthrough_polygon(polygon) end

---@return PackedVector2Array
function Window.get_mouse_passthrough_polygon() end

---@param enable boolean
function Window.set_wrap_controls(enable) end

---@return boolean
function Window.is_wrapping_controls() end

function Window.child_controls_changed() end

---@param theme Theme
function Window.set_theme(theme) end

---@return Theme
function Window.get_theme() end

---@param theme_type string
function Window.set_theme_type_variation(theme_type) end

---@return string
function Window.get_theme_type_variation() end

function Window.begin_bulk_theme_override() end

function Window.end_bulk_theme_override() end

---@param name string
---@param texture Texture2D
function Window.add_theme_icon_override(name, texture) end

---@param name string
---@param stylebox StyleBox
function Window.add_theme_stylebox_override(name, stylebox) end

---@param name string
---@param font Font
function Window.add_theme_font_override(name, font) end

---@param name string
---@param font_size integer
function Window.add_theme_font_size_override(name, font_size) end

---@param name string
---@param color Color
function Window.add_theme_color_override(name, color) end

---@param name string
---@param constant integer
function Window.add_theme_constant_override(name, constant) end

---@param name string
function Window.remove_theme_icon_override(name) end

---@param name string
function Window.remove_theme_stylebox_override(name) end

---@param name string
function Window.remove_theme_font_override(name) end

---@param name string
function Window.remove_theme_font_size_override(name) end

---@param name string
function Window.remove_theme_color_override(name) end

---@param name string
function Window.remove_theme_constant_override(name) end

---@param name string
---@param theme_type string?  # Default = 
---@return Texture2D
function Window.get_theme_icon(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return StyleBox
function Window.get_theme_stylebox(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return Font
function Window.get_theme_font(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return integer
function Window.get_theme_font_size(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return Color
function Window.get_theme_color(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return integer
function Window.get_theme_constant(name, theme_type) end

---@param name string
---@return boolean
function Window.has_theme_icon_override(name) end

---@param name string
---@return boolean
function Window.has_theme_stylebox_override(name) end

---@param name string
---@return boolean
function Window.has_theme_font_override(name) end

---@param name string
---@return boolean
function Window.has_theme_font_size_override(name) end

---@param name string
---@return boolean
function Window.has_theme_color_override(name) end

---@param name string
---@return boolean
function Window.has_theme_constant_override(name) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_icon(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_stylebox(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_font(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_font_size(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_color(name, theme_type) end

---@param name string
---@param theme_type string?  # Default = 
---@return boolean
function Window.has_theme_constant(name, theme_type) end

---@return number
function Window.get_theme_default_base_scale() end

---@return Font
function Window.get_theme_default_font() end

---@return integer
function Window.get_theme_default_font_size() end

---@return integer
function Window.get_window_id() end

---@param name string
function Window.set_accessibility_name(name) end

---@return string
function Window.get_accessibility_name() end

---@param description string
function Window.set_accessibility_description(description) end

---@return string
function Window.get_accessibility_description() end

---@return Window
function Window.get_focused_window() end

---@param direction Window.LayoutDirection
function Window.set_layout_direction(direction) end

---@return Window.LayoutDirection
function Window.get_layout_direction() end

---@return boolean
function Window.is_layout_rtl() end

---@param enable boolean
function Window.set_auto_translate(enable) end

---@return boolean
function Window.is_auto_translating() end

---@param enable boolean
function Window.set_use_font_oversampling(enable) end

---@return boolean
function Window.is_using_font_oversampling() end

---@param rect Rect2i?  # Default = [P: (0, 0), S: (0, 0)]
function Window.popup(rect) end

---@param parent_rect Rect2i
function Window.popup_on_parent(parent_rect) end

---@param minsize Vector2i?  # Default = (0, 0)
function Window.popup_centered(minsize) end

---@param ratio number?  # Default = 0.8
function Window.popup_centered_ratio(ratio) end

---@param minsize Vector2i?  # Default = (0, 0)
---@param fallback_ratio number?  # Default = 0.75
function Window.popup_centered_clamped(minsize, fallback_ratio) end

---@param from_node Node
---@param rect Rect2i?  # Default = [P: (0, 0), S: (0, 0)]
function Window.popup_exclusive(from_node, rect) end

---@param from_node Node
---@param parent_rect Rect2i
function Window.popup_exclusive_on_parent(from_node, parent_rect) end

---@param from_node Node
---@param minsize Vector2i?  # Default = (0, 0)
function Window.popup_exclusive_centered(from_node, minsize) end

---@param from_node Node
---@param ratio number?  # Default = 0.8
function Window.popup_exclusive_centered_ratio(from_node, ratio) end

---@param from_node Node
---@param minsize Vector2i?  # Default = (0, 0)
---@param fallback_ratio number?  # Default = 0.75
function Window.popup_exclusive_centered_clamped(from_node, minsize, fallback_ratio) end
