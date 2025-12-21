---@meta _
-- Generated API for game version 0.9.1

---@class PlaneMesh : PrimitiveMesh
---@field size Vector2
---@field subdivide_width integer
---@field subdivide_depth integer
---@field center_offset Vector3
---@field orientation integer
local PlaneMesh = {}

---@param size Vector2
function PlaneMesh.set_size(size) end

---@return Vector2
function PlaneMesh.get_size() end

---@param subdivide integer
function PlaneMesh.set_subdivide_width(subdivide) end

---@return integer
function PlaneMesh.get_subdivide_width() end

---@param subdivide integer
function PlaneMesh.set_subdivide_depth(subdivide) end

---@return integer
function PlaneMesh.get_subdivide_depth() end

---@param offset Vector3
function PlaneMesh.set_center_offset(offset) end

---@return Vector3
function PlaneMesh.get_center_offset() end

---@param orientation PlaneMesh.Orientation
function PlaneMesh.set_orientation(orientation) end

---@return PlaneMesh.Orientation
function PlaneMesh.get_orientation() end
