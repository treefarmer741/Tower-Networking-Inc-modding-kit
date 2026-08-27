---@meta _
-- Generated API for game version 0.12.1

---@class IterateIK3D : ChainIK3D
---@field max_iterations integer
---@field min_distance number
---@field angular_delta_limit number
---@field deterministic boolean
---@field setting_count Settings,settings/
local IterateIK3D = {}

---@param max_iterations integer
function IterateIK3D.set_max_iterations(max_iterations) end

---@return integer
function IterateIK3D.get_max_iterations() end

---@param min_distance number
function IterateIK3D.set_min_distance(min_distance) end

---@return number
function IterateIK3D.get_min_distance() end

---@param angular_delta_limit number
function IterateIK3D.set_angular_delta_limit(angular_delta_limit) end

---@return number
function IterateIK3D.get_angular_delta_limit() end

---@param deterministic boolean
function IterateIK3D.set_deterministic(deterministic) end

---@return boolean
function IterateIK3D.is_deterministic() end

---@param index integer
---@param target_node string
function IterateIK3D.set_target_node(index, target_node) end

---@param index integer
---@return string
function IterateIK3D.get_target_node(index) end

---@param index integer
---@param joint integer
---@param axis SkeletonModifier3D.RotationAxis
function IterateIK3D.set_joint_rotation_axis(index, joint, axis) end

---@param index integer
---@param joint integer
---@return SkeletonModifier3D.RotationAxis
function IterateIK3D.get_joint_rotation_axis(index, joint) end

---@param index integer
---@param joint integer
---@param axis_vector Vector3
function IterateIK3D.set_joint_rotation_axis_vector(index, joint, axis_vector) end

---@param index integer
---@param joint integer
---@return Vector3
function IterateIK3D.get_joint_rotation_axis_vector(index, joint) end

---@param index integer
---@param joint integer
---@param limitation JointLimitation3D
function IterateIK3D.set_joint_limitation(index, joint, limitation) end

---@param index integer
---@param joint integer
---@return JointLimitation3D
function IterateIK3D.get_joint_limitation(index, joint) end

---@param index integer
---@param joint integer
---@param direction SkeletonModifier3D.SecondaryDirection
function IterateIK3D.set_joint_limitation_right_axis(index, joint, direction) end

---@param index integer
---@param joint integer
---@return SkeletonModifier3D.SecondaryDirection
function IterateIK3D.get_joint_limitation_right_axis(index, joint) end

---@param index integer
---@param joint integer
---@param vector Vector3
function IterateIK3D.set_joint_limitation_right_axis_vector(index, joint, vector) end

---@param index integer
---@param joint integer
---@return Vector3
function IterateIK3D.get_joint_limitation_right_axis_vector(index, joint) end

---@param index integer
---@param joint integer
---@param offset Quaternion
function IterateIK3D.set_joint_limitation_rotation_offset(index, joint, offset) end

---@param index integer
---@param joint integer
---@return Quaternion
function IterateIK3D.get_joint_limitation_rotation_offset(index, joint) end
