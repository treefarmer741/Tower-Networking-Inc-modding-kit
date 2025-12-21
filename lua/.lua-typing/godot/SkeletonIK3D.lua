---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonIK3D : SkeletonModifier3D
---@field root_bone string
---@field tip_bone string
---@field target Transform3D
---@field override_tip_basis boolean
---@field use_magnet boolean
---@field magnet Vector3
---@field target_node string
---@field min_distance number
---@field max_iterations integer
---@field interpolation number
local SkeletonIK3D = {}

---@param root_bone string
function SkeletonIK3D.set_root_bone(root_bone) end

---@return string
function SkeletonIK3D.get_root_bone() end

---@param tip_bone string
function SkeletonIK3D.set_tip_bone(tip_bone) end

---@return string
function SkeletonIK3D.get_tip_bone() end

---@param target Transform3D
function SkeletonIK3D.set_target_transform(target) end

---@return Transform3D
function SkeletonIK3D.get_target_transform() end

---@param node string
function SkeletonIK3D.set_target_node(node) end

---@return string
function SkeletonIK3D.get_target_node() end

---@param override boolean
function SkeletonIK3D.set_override_tip_basis(override) end

---@return boolean
function SkeletonIK3D.is_override_tip_basis() end

---@param use boolean
function SkeletonIK3D.set_use_magnet(use) end

---@return boolean
function SkeletonIK3D.is_using_magnet() end

---@param local_position Vector3
function SkeletonIK3D.set_magnet_position(local_position) end

---@return Vector3
function SkeletonIK3D.get_magnet_position() end

---@return Skeleton3D
function SkeletonIK3D.get_parent_skeleton() end

---@return boolean
function SkeletonIK3D.is_running() end

---@param min_distance number
function SkeletonIK3D.set_min_distance(min_distance) end

---@return number
function SkeletonIK3D.get_min_distance() end

---@param iterations integer
function SkeletonIK3D.set_max_iterations(iterations) end

---@return integer
function SkeletonIK3D.get_max_iterations() end

---@param one_time boolean?  # Default = false
function SkeletonIK3D.start(one_time) end

function SkeletonIK3D.stop() end

---@param interpolation number
function SkeletonIK3D.set_interpolation(interpolation) end

---@return number
function SkeletonIK3D.get_interpolation() end
