---@meta _
-- Generated API for game version 0.10.0

---@class VisualInstance3D : Node3D
---@field layers integer
---@field sorting_offset number
---@field sorting_use_aabb_center boolean
local VisualInstance3D = {}

---@param base RID
function VisualInstance3D.set_base(base) end

---@return RID
function VisualInstance3D.get_base() end

---@return RID
function VisualInstance3D.get_instance() end

---@param mask integer
function VisualInstance3D.set_layer_mask(mask) end

---@return integer
function VisualInstance3D.get_layer_mask() end

---@param layer_number integer
---@param value boolean
function VisualInstance3D.set_layer_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function VisualInstance3D.get_layer_mask_value(layer_number) end

---@param offset number
function VisualInstance3D.set_sorting_offset(offset) end

---@return number
function VisualInstance3D.get_sorting_offset() end

---@param enabled boolean
function VisualInstance3D.set_sorting_use_aabb_center(enabled) end

---@return boolean
function VisualInstance3D.is_sorting_use_aabb_center() end

---@return AABB
function VisualInstance3D.get_aabb() end
