---@meta _
-- Generated API for game version 0.10.0

---@class LightOccluder2D : Node2D
---@field occluder OccluderPolygon2D
---@field sdf_collision boolean
---@field occluder_light_mask integer
local LightOccluder2D = {}

---@param polygon OccluderPolygon2D
function LightOccluder2D.set_occluder_polygon(polygon) end

---@return OccluderPolygon2D
function LightOccluder2D.get_occluder_polygon() end

---@param mask integer
function LightOccluder2D.set_occluder_light_mask(mask) end

---@return integer
function LightOccluder2D.get_occluder_light_mask() end

---@param enable boolean
function LightOccluder2D.set_as_sdf_collision(enable) end

---@return boolean
function LightOccluder2D.is_set_as_sdf_collision() end
