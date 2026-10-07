---@meta _
-- Generated API for game version 0.10.0

---@class OccluderPolygon2D : Resource
---@field closed boolean
---@field cull_mode integer
---@field polygon PackedVector2Array
local OccluderPolygon2D = {}

---@param closed boolean
function OccluderPolygon2D.set_closed(closed) end

---@return boolean
function OccluderPolygon2D.is_closed() end

---@param cull_mode OccluderPolygon2D.CullMode
function OccluderPolygon2D.set_cull_mode(cull_mode) end

---@return OccluderPolygon2D.CullMode
function OccluderPolygon2D.get_cull_mode() end

---@param polygon PackedVector2Array
function OccluderPolygon2D.set_polygon(polygon) end

---@return PackedVector2Array
function OccluderPolygon2D.get_polygon() end
