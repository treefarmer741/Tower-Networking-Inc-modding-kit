---@meta _
-- Generated API for game version 0.10.0

---@class Light2D : Node2D
---@field enabled boolean
---@field editor_only boolean
---@field color Color
---@field energy number
---@field blend_mode integer
---@field range_z_min integer
---@field range_z_max integer
---@field range_layer_min integer
---@field range_layer_max integer
---@field range_item_cull_mask integer
---@field shadow_enabled boolean
---@field shadow_color Color
---@field shadow_filter integer
---@field shadow_filter_smooth number
---@field shadow_item_cull_mask integer
local Light2D = {}

---@param enabled boolean
function Light2D.set_enabled(enabled) end

---@return boolean
function Light2D.is_enabled() end

---@param editor_only boolean
function Light2D.set_editor_only(editor_only) end

---@return boolean
function Light2D.is_editor_only() end

---@param color Color
function Light2D.set_color(color) end

---@return Color
function Light2D.get_color() end

---@param energy number
function Light2D.set_energy(energy) end

---@return number
function Light2D.get_energy() end

---@param z integer
function Light2D.set_z_range_min(z) end

---@return integer
function Light2D.get_z_range_min() end

---@param z integer
function Light2D.set_z_range_max(z) end

---@return integer
function Light2D.get_z_range_max() end

---@param layer integer
function Light2D.set_layer_range_min(layer) end

---@return integer
function Light2D.get_layer_range_min() end

---@param layer integer
function Light2D.set_layer_range_max(layer) end

---@return integer
function Light2D.get_layer_range_max() end

---@param item_cull_mask integer
function Light2D.set_item_cull_mask(item_cull_mask) end

---@return integer
function Light2D.get_item_cull_mask() end

---@param item_shadow_cull_mask integer
function Light2D.set_item_shadow_cull_mask(item_shadow_cull_mask) end

---@return integer
function Light2D.get_item_shadow_cull_mask() end

---@param enabled boolean
function Light2D.set_shadow_enabled(enabled) end

---@return boolean
function Light2D.is_shadow_enabled() end

---@param smooth number
function Light2D.set_shadow_smooth(smooth) end

---@return number
function Light2D.get_shadow_smooth() end

---@param filter Light2D.ShadowFilter
function Light2D.set_shadow_filter(filter) end

---@return Light2D.ShadowFilter
function Light2D.get_shadow_filter() end

---@param shadow_color Color
function Light2D.set_shadow_color(shadow_color) end

---@return Color
function Light2D.get_shadow_color() end

---@param mode Light2D.BlendMode
function Light2D.set_blend_mode(mode) end

---@return Light2D.BlendMode
function Light2D.get_blend_mode() end

---@param height number
function Light2D.set_height(height) end

---@return number
function Light2D.get_height() end
