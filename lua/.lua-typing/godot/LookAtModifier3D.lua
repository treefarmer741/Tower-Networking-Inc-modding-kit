---@meta _
-- Generated API for game version 0.9.1

---@class LookAtModifier3D : SkeletonModifier3D
---@field target_node string
---@field bone_name string
---@field bone integer
---@field forward_axis integer
---@field primary_rotation_axis integer
---@field use_secondary_rotation boolean
---@field origin_from integer
---@field origin_bone_name string
---@field origin_bone integer
---@field origin_external_node string
---@field origin_offset Vector3
---@field origin_safe_margin number
---@field duration number
---@field transition_type integer
---@field ease_type integer
---@field use_angle_limitation boolean
---@field symmetry_limitation boolean
---@field primary_limit_angle number
---@field primary_damp_threshold number
---@field primary_positive_limit_angle number
---@field primary_positive_damp_threshold number
---@field primary_negative_limit_angle number
---@field primary_negative_damp_threshold number
---@field secondary_limit_angle number
---@field secondary_damp_threshold number
---@field secondary_positive_limit_angle number
---@field secondary_positive_damp_threshold number
---@field secondary_negative_limit_angle number
---@field secondary_negative_damp_threshold number
local LookAtModifier3D = {}

---@param target_node string
function LookAtModifier3D.set_target_node(target_node) end

---@return string
function LookAtModifier3D.get_target_node() end

---@param bone_name string
function LookAtModifier3D.set_bone_name(bone_name) end

---@return string
function LookAtModifier3D.get_bone_name() end

---@param bone integer
function LookAtModifier3D.set_bone(bone) end

---@return integer
function LookAtModifier3D.get_bone() end

---@param forward_axis SkeletonModifier3D.BoneAxis
function LookAtModifier3D.set_forward_axis(forward_axis) end

---@return SkeletonModifier3D.BoneAxis
function LookAtModifier3D.get_forward_axis() end

---@param axis Vector3.Axis
function LookAtModifier3D.set_primary_rotation_axis(axis) end

---@return Vector3.Axis
function LookAtModifier3D.get_primary_rotation_axis() end

---@param enabled boolean
function LookAtModifier3D.set_use_secondary_rotation(enabled) end

---@return boolean
function LookAtModifier3D.is_using_secondary_rotation() end

---@param margin number
function LookAtModifier3D.set_origin_safe_margin(margin) end

---@return number
function LookAtModifier3D.get_origin_safe_margin() end

---@param origin_from LookAtModifier3D.OriginFrom
function LookAtModifier3D.set_origin_from(origin_from) end

---@return LookAtModifier3D.OriginFrom
function LookAtModifier3D.get_origin_from() end

---@param bone_name string
function LookAtModifier3D.set_origin_bone_name(bone_name) end

---@return string
function LookAtModifier3D.get_origin_bone_name() end

---@param bone integer
function LookAtModifier3D.set_origin_bone(bone) end

---@return integer
function LookAtModifier3D.get_origin_bone() end

---@param external_node string
function LookAtModifier3D.set_origin_external_node(external_node) end

---@return string
function LookAtModifier3D.get_origin_external_node() end

---@param offset Vector3
function LookAtModifier3D.set_origin_offset(offset) end

---@return Vector3
function LookAtModifier3D.get_origin_offset() end

---@param duration number
function LookAtModifier3D.set_duration(duration) end

---@return number
function LookAtModifier3D.get_duration() end

---@param transition_type Tween.TransitionType
function LookAtModifier3D.set_transition_type(transition_type) end

---@return Tween.TransitionType
function LookAtModifier3D.get_transition_type() end

---@param ease_type Tween.EaseType
function LookAtModifier3D.set_ease_type(ease_type) end

---@return Tween.EaseType
function LookAtModifier3D.get_ease_type() end

---@param enabled boolean
function LookAtModifier3D.set_use_angle_limitation(enabled) end

---@return boolean
function LookAtModifier3D.is_using_angle_limitation() end

---@param enabled boolean
function LookAtModifier3D.set_symmetry_limitation(enabled) end

---@return boolean
function LookAtModifier3D.is_limitation_symmetry() end

---@param angle number
function LookAtModifier3D.set_primary_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_primary_limit_angle() end

---@param power number
function LookAtModifier3D.set_primary_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_primary_damp_threshold() end

---@param angle number
function LookAtModifier3D.set_primary_positive_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_primary_positive_limit_angle() end

---@param power number
function LookAtModifier3D.set_primary_positive_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_primary_positive_damp_threshold() end

---@param angle number
function LookAtModifier3D.set_primary_negative_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_primary_negative_limit_angle() end

---@param power number
function LookAtModifier3D.set_primary_negative_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_primary_negative_damp_threshold() end

---@param angle number
function LookAtModifier3D.set_secondary_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_secondary_limit_angle() end

---@param power number
function LookAtModifier3D.set_secondary_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_secondary_damp_threshold() end

---@param angle number
function LookAtModifier3D.set_secondary_positive_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_secondary_positive_limit_angle() end

---@param power number
function LookAtModifier3D.set_secondary_positive_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_secondary_positive_damp_threshold() end

---@param angle number
function LookAtModifier3D.set_secondary_negative_limit_angle(angle) end

---@return number
function LookAtModifier3D.get_secondary_negative_limit_angle() end

---@param power number
function LookAtModifier3D.set_secondary_negative_damp_threshold(power) end

---@return number
function LookAtModifier3D.get_secondary_negative_damp_threshold() end

---@return number
function LookAtModifier3D.get_interpolation_remaining() end

---@return boolean
function LookAtModifier3D.is_interpolating() end

---@return boolean
function LookAtModifier3D.is_target_within_limitation() end
