---@meta _
-- Generated API for game version 0.10.0

---@class SpriteBase3D : GeometryInstance3D
---@field centered boolean
---@field offset Vector2
---@field flip_h boolean
---@field flip_v boolean
---@field modulate Color
---@field pixel_size number
---@field axis integer
---@field billboard integer
---@field transparent boolean
---@field shaded boolean
---@field double_sided boolean
---@field no_depth_test boolean
---@field fixed_size boolean
---@field alpha_cut integer
---@field alpha_scissor_threshold number
---@field alpha_hash_scale number
---@field alpha_antialiasing_mode integer
---@field alpha_antialiasing_edge number
---@field texture_filter integer
---@field render_priority integer
local SpriteBase3D = {}

---@param centered boolean
function SpriteBase3D.set_centered(centered) end

---@return boolean
function SpriteBase3D.is_centered() end

---@param offset Vector2
function SpriteBase3D.set_offset(offset) end

---@return Vector2
function SpriteBase3D.get_offset() end

---@param flip_h boolean
function SpriteBase3D.set_flip_h(flip_h) end

---@return boolean
function SpriteBase3D.is_flipped_h() end

---@param flip_v boolean
function SpriteBase3D.set_flip_v(flip_v) end

---@return boolean
function SpriteBase3D.is_flipped_v() end

---@param modulate Color
function SpriteBase3D.set_modulate(modulate) end

---@return Color
function SpriteBase3D.get_modulate() end

---@param priority integer
function SpriteBase3D.set_render_priority(priority) end

---@return integer
function SpriteBase3D.get_render_priority() end

---@param pixel_size number
function SpriteBase3D.set_pixel_size(pixel_size) end

---@return number
function SpriteBase3D.get_pixel_size() end

---@param axis Vector3.Axis
function SpriteBase3D.set_axis(axis) end

---@return Vector3.Axis
function SpriteBase3D.get_axis() end

---@param flag SpriteBase3D.DrawFlags
---@param enabled boolean
function SpriteBase3D.set_draw_flag(flag, enabled) end

---@param flag SpriteBase3D.DrawFlags
---@return boolean
function SpriteBase3D.get_draw_flag(flag) end

---@param mode SpriteBase3D.AlphaCutMode
function SpriteBase3D.set_alpha_cut_mode(mode) end

---@return SpriteBase3D.AlphaCutMode
function SpriteBase3D.get_alpha_cut_mode() end

---@param threshold number
function SpriteBase3D.set_alpha_scissor_threshold(threshold) end

---@return number
function SpriteBase3D.get_alpha_scissor_threshold() end

---@param threshold number
function SpriteBase3D.set_alpha_hash_scale(threshold) end

---@return number
function SpriteBase3D.get_alpha_hash_scale() end

---@param alpha_aa BaseMaterial3D.AlphaAntiAliasing
function SpriteBase3D.set_alpha_antialiasing(alpha_aa) end

---@return BaseMaterial3D.AlphaAntiAliasing
function SpriteBase3D.get_alpha_antialiasing() end

---@param edge number
function SpriteBase3D.set_alpha_antialiasing_edge(edge) end

---@return number
function SpriteBase3D.get_alpha_antialiasing_edge() end

---@param mode BaseMaterial3D.BillboardMode
function SpriteBase3D.set_billboard_mode(mode) end

---@return BaseMaterial3D.BillboardMode
function SpriteBase3D.get_billboard_mode() end

---@param mode BaseMaterial3D.TextureFilter
function SpriteBase3D.set_texture_filter(mode) end

---@return BaseMaterial3D.TextureFilter
function SpriteBase3D.get_texture_filter() end

---@return Rect2
function SpriteBase3D.get_item_rect() end

---@return TriangleMesh
function SpriteBase3D.generate_triangle_mesh() end
