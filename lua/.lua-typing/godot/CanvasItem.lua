---@meta _
-- Generated API for game version 0.9.1

---@class CanvasItem : Node
---@field visible boolean
---@field modulate Color
---@field self_modulate Color
---@field show_behind_parent boolean
---@field top_level boolean
---@field clip_children integer
---@field light_mask integer
---@field visibility_layer integer
---@field z_index integer
---@field z_as_relative boolean
---@field y_sort_enabled boolean
---@field texture_filter integer
---@field texture_repeat integer
---@field material CanvasItemMaterial,ShaderMaterial
---@field use_parent_material boolean
local CanvasItem = {}

---@return RID
function CanvasItem.get_canvas_item() end

---@param visible boolean
function CanvasItem.set_visible(visible) end

---@return boolean
function CanvasItem.is_visible() end

---@return boolean
function CanvasItem.is_visible_in_tree() end

function CanvasItem.show() end

function CanvasItem.hide() end

function CanvasItem.queue_redraw() end

function CanvasItem.move_to_front() end

---@param enable boolean
function CanvasItem.set_as_top_level(enable) end

---@return boolean
function CanvasItem.is_set_as_top_level() end

---@param light_mask integer
function CanvasItem.set_light_mask(light_mask) end

---@return integer
function CanvasItem.get_light_mask() end

---@param modulate Color
function CanvasItem.set_modulate(modulate) end

---@return Color
function CanvasItem.get_modulate() end

---@param self_modulate Color
function CanvasItem.set_self_modulate(self_modulate) end

---@return Color
function CanvasItem.get_self_modulate() end

---@param z_index integer
function CanvasItem.set_z_index(z_index) end

---@return integer
function CanvasItem.get_z_index() end

---@param enable boolean
function CanvasItem.set_z_as_relative(enable) end

---@return boolean
function CanvasItem.is_z_relative() end

---@param enabled boolean
function CanvasItem.set_y_sort_enabled(enabled) end

---@return boolean
function CanvasItem.is_y_sort_enabled() end

---@param enable boolean
function CanvasItem.set_draw_behind_parent(enable) end

---@return boolean
function CanvasItem.is_draw_behind_parent_enabled() end

---@param from Vector2
---@param to Vector2
---@param color Color
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_line(from, to, color, width, antialiased) end

---@param from Vector2
---@param to Vector2
---@param color Color
---@param width number?  # Default = -1.0
---@param dash number?  # Default = 2.0
---@param aligned boolean?  # Default = true
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_dashed_line(from, to, color, width, dash, aligned, antialiased) end

---@param points PackedVector2Array
---@param color Color
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_polyline(points, color, width, antialiased) end

---@param points PackedVector2Array
---@param colors PackedColorArray
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_polyline_colors(points, colors, width, antialiased) end

---@param center Vector2
---@param radius number
---@param start_angle number
---@param end_angle number
---@param point_count integer
---@param color Color
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_arc(center, radius, start_angle, end_angle, point_count, color, width, antialiased) end

---@param points PackedVector2Array
---@param color Color
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_multiline(points, color, width, antialiased) end

---@param points PackedVector2Array
---@param colors PackedColorArray
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_multiline_colors(points, colors, width, antialiased) end

---@param rect Rect2
---@param color Color
---@param filled boolean?  # Default = true
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_rect(rect, color, filled, width, antialiased) end

---@param position Vector2
---@param radius number
---@param color Color
---@param filled boolean?  # Default = true
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function CanvasItem.draw_circle(position, radius, color, filled, width, antialiased) end

---@param texture Texture2D
---@param position Vector2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function CanvasItem.draw_texture(texture, position, modulate) end

---@param texture Texture2D
---@param rect Rect2
---@param tile boolean
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
function CanvasItem.draw_texture_rect(texture, rect, tile, modulate, transpose) end

---@param texture Texture2D
---@param rect Rect2
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
---@param clip_uv boolean?  # Default = true
function CanvasItem.draw_texture_rect_region(texture, rect, src_rect, modulate, transpose, clip_uv) end

---@param texture Texture2D
---@param rect Rect2
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param outline number?  # Default = 0.0
---@param pixel_range number?  # Default = 4.0
---@param scale number?  # Default = 1.0
function CanvasItem.draw_msdf_texture_rect_region(texture, rect, src_rect, modulate, outline, pixel_range, scale) end

---@param texture Texture2D
---@param rect Rect2
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function CanvasItem.draw_lcd_texture_rect_region(texture, rect, src_rect, modulate) end

---@param style_box StyleBox
---@param rect Rect2
function CanvasItem.draw_style_box(style_box, rect) end

---@param points PackedVector2Array
---@param colors PackedColorArray
---@param uvs PackedVector2Array
---@param texture Texture2D?  # Default = <Object#null>
function CanvasItem.draw_primitive(points, colors, uvs, texture) end

---@param points PackedVector2Array
---@param colors PackedColorArray
---@param uvs PackedVector2Array?  # Default = []
---@param texture Texture2D?  # Default = <Object#null>
function CanvasItem.draw_polygon(points, colors, uvs, texture) end

---@param points PackedVector2Array
---@param color Color
---@param uvs PackedVector2Array?  # Default = []
---@param texture Texture2D?  # Default = <Object#null>
function CanvasItem.draw_colored_polygon(points, color, uvs, texture) end

---@param font Font
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_string(font, pos, text, alignment, width, font_size, modulate, justification_flags, direction, orientation, oversampling) end

---@param font Font
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param max_lines integer?  # Default = -1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param brk_flags TextServer.LineBreakFlag?  # Default = 3
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_multiline_string(font, pos, text, alignment, width, font_size, max_lines, modulate, brk_flags, justification_flags, direction, orientation, oversampling) end

---@param font Font
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param size integer?  # Default = 1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_string_outline(font, pos, text, alignment, width, font_size, size, modulate, justification_flags, direction, orientation, oversampling) end

---@param font Font
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param max_lines integer?  # Default = -1
---@param size integer?  # Default = 1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param brk_flags TextServer.LineBreakFlag?  # Default = 3
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_multiline_string_outline(font, pos, text, alignment, width, font_size, max_lines, size, modulate, brk_flags, justification_flags, direction, orientation, oversampling) end

---@param font Font
---@param pos Vector2
---@param char string
---@param font_size integer?  # Default = 16
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_char(font, pos, char, font_size, modulate, oversampling) end

---@param font Font
---@param pos Vector2
---@param char string
---@param font_size integer?  # Default = 16
---@param size integer?  # Default = -1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function CanvasItem.draw_char_outline(font, pos, char, font_size, size, modulate, oversampling) end

---@param mesh Mesh
---@param texture Texture2D
---@param transform Transform2D?  # Default = [X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function CanvasItem.draw_mesh(mesh, texture, transform, modulate) end

---@param multimesh MultiMesh
---@param texture Texture2D
function CanvasItem.draw_multimesh(multimesh, texture) end

---@param position Vector2
---@param rotation number?  # Default = 0.0
---@param scale Vector2?  # Default = (1.0, 1.0)
function CanvasItem.draw_set_transform(position, rotation, scale) end

---@param xform Transform2D
function CanvasItem.draw_set_transform_matrix(xform) end

---@param animation_length number
---@param slice_begin number
---@param slice_end number
---@param offset number?  # Default = 0.0
function CanvasItem.draw_animation_slice(animation_length, slice_begin, slice_end, offset) end

function CanvasItem.draw_end_animation() end

---@return Transform2D
function CanvasItem.get_transform() end

---@return Transform2D
function CanvasItem.get_global_transform() end

---@return Transform2D
function CanvasItem.get_global_transform_with_canvas() end

---@return Transform2D
function CanvasItem.get_viewport_transform() end

---@return Rect2
function CanvasItem.get_viewport_rect() end

---@return Transform2D
function CanvasItem.get_canvas_transform() end

---@return Transform2D
function CanvasItem.get_screen_transform() end

---@return Vector2
function CanvasItem.get_local_mouse_position() end

---@return Vector2
function CanvasItem.get_global_mouse_position() end

---@return RID
function CanvasItem.get_canvas() end

---@return CanvasLayer
function CanvasItem.get_canvas_layer_node() end

---@return World2D
function CanvasItem.get_world_2d() end

---@param material Material
function CanvasItem.set_material(material) end

---@return Material
function CanvasItem.get_material() end

---@param name string
---@param value Object
function CanvasItem.set_instance_shader_parameter(name, value) end

---@param name string
---@return Object
function CanvasItem.get_instance_shader_parameter(name) end

---@param enable boolean
function CanvasItem.set_use_parent_material(enable) end

---@return boolean
function CanvasItem.get_use_parent_material() end

---@param enable boolean
function CanvasItem.set_notify_local_transform(enable) end

---@return boolean
function CanvasItem.is_local_transform_notification_enabled() end

---@param enable boolean
function CanvasItem.set_notify_transform(enable) end

---@return boolean
function CanvasItem.is_transform_notification_enabled() end

function CanvasItem.force_update_transform() end

---@param viewport_point Vector2
---@return Vector2
function CanvasItem.make_canvas_position_local(viewport_point) end

---@param event InputEvent
---@return InputEvent
function CanvasItem.make_input_local(event) end

---@param layer integer
function CanvasItem.set_visibility_layer(layer) end

---@return integer
function CanvasItem.get_visibility_layer() end

---@param layer integer
---@param enabled boolean
function CanvasItem.set_visibility_layer_bit(layer, enabled) end

---@param layer integer
---@return boolean
function CanvasItem.get_visibility_layer_bit(layer) end

---@param mode CanvasItem.TextureFilter
function CanvasItem.set_texture_filter(mode) end

---@return CanvasItem.TextureFilter
function CanvasItem.get_texture_filter() end

---@param mode CanvasItem.TextureRepeat
function CanvasItem.set_texture_repeat(mode) end

---@return CanvasItem.TextureRepeat
function CanvasItem.get_texture_repeat() end

---@param mode CanvasItem.ClipChildrenMode
function CanvasItem.set_clip_children_mode(mode) end

---@return CanvasItem.ClipChildrenMode
function CanvasItem.get_clip_children_mode() end
