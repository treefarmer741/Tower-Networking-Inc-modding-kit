---@meta _
-- Generated API for game version 0.12.1

---@class MeshUtils : Object
local MeshUtils = {}

---@param n3d Node3D
function MeshUtils.reladjust_node3d_ypos_above_zero(n3d) end

---@param n3d Node3D
---@return AABB
function MeshUtils.get_node3d_aabb_from_visual_instances(n3d) end

---@param subject_node3d Node3D
---@return number
function MeshUtils.get_node3d_mesh_height_from_rooty(subject_node3d) end
