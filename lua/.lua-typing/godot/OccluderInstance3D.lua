---@meta _
-- Generated API for game version 0.9.1

---@class OccluderInstance3D : VisualInstance3D
---@field occluder Occluder3D
---@field bake_mask integer
---@field bake_simplification_distance number
local OccluderInstance3D = {}

---@param mask integer
function OccluderInstance3D.set_bake_mask(mask) end

---@return integer
function OccluderInstance3D.get_bake_mask() end

---@param layer_number integer
---@param value boolean
function OccluderInstance3D.set_bake_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function OccluderInstance3D.get_bake_mask_value(layer_number) end

---@param simplification_distance number
function OccluderInstance3D.set_bake_simplification_distance(simplification_distance) end

---@return number
function OccluderInstance3D.get_bake_simplification_distance() end

---@param occluder Occluder3D
function OccluderInstance3D.set_occluder(occluder) end

---@return Occluder3D
function OccluderInstance3D.get_occluder() end
