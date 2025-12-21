---@meta _
-- Generated API for game version 0.9.1

---@class MeshUtils : Object
local MeshUtils = {}

---@param n3d Node3D
function MeshUtils.reladjust_node3d_ypos_above_zero(n3d) end

---@param n3d Node3D
---@param recurse boolean?  # Default = false
---@return AABB
function MeshUtils.get_node3d_aabb_from_visual_instances(n3d, recurse) end
