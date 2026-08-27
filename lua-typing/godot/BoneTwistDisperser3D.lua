---@meta _
-- Generated API for game version 0.12.1

---@class BoneTwistDisperser3D : SkeletonModifier3D
---@field mutable_bone_axes boolean
---@field setting_count Settings,settings/
local BoneTwistDisperser3D = {}

---@param count integer
function BoneTwistDisperser3D.set_setting_count(count) end

---@return integer
function BoneTwistDisperser3D.get_setting_count() end

function BoneTwistDisperser3D.clear_settings() end

---@param enabled boolean
function BoneTwistDisperser3D.set_mutable_bone_axes(enabled) end

---@return boolean
function BoneTwistDisperser3D.are_bone_axes_mutable() end

---@param index integer
---@param bone_name string
function BoneTwistDisperser3D.set_root_bone_name(index, bone_name) end

---@param index integer
---@return string
function BoneTwistDisperser3D.get_root_bone_name(index) end

---@param index integer
---@param bone integer
function BoneTwistDisperser3D.set_root_bone(index, bone) end

---@param index integer
---@return integer
function BoneTwistDisperser3D.get_root_bone(index) end

---@param index integer
---@param bone_name string
function BoneTwistDisperser3D.set_end_bone_name(index, bone_name) end

---@param index integer
---@return string
function BoneTwistDisperser3D.get_end_bone_name(index) end

---@param index integer
---@param bone integer
function BoneTwistDisperser3D.set_end_bone(index, bone) end

---@param index integer
---@return integer
function BoneTwistDisperser3D.get_end_bone(index) end

---@param index integer
---@return string
function BoneTwistDisperser3D.get_reference_bone_name(index) end

---@param index integer
---@return integer
function BoneTwistDisperser3D.get_reference_bone(index) end

---@param index integer
---@param enabled boolean
function BoneTwistDisperser3D.set_extend_end_bone(index, enabled) end

---@param index integer
---@return boolean
function BoneTwistDisperser3D.is_end_bone_extended(index) end

---@param index integer
---@param bone_direction SkeletonModifier3D.BoneDirection
function BoneTwistDisperser3D.set_end_bone_direction(index, bone_direction) end

---@param index integer
---@return SkeletonModifier3D.BoneDirection
function BoneTwistDisperser3D.get_end_bone_direction(index) end

---@param index integer
---@param enabled boolean
function BoneTwistDisperser3D.set_twist_from_rest(index, enabled) end

---@param index integer
---@return boolean
function BoneTwistDisperser3D.is_twist_from_rest(index) end

---@param index integer
---@param from Quaternion
function BoneTwistDisperser3D.set_twist_from(index, from) end

---@param index integer
---@return Quaternion
function BoneTwistDisperser3D.get_twist_from(index) end

---@param index integer
---@param disperse_mode BoneTwistDisperser3D.DisperseMode
function BoneTwistDisperser3D.set_disperse_mode(index, disperse_mode) end

---@param index integer
---@return BoneTwistDisperser3D.DisperseMode
function BoneTwistDisperser3D.get_disperse_mode(index) end

---@param index integer
---@param weight_position number
function BoneTwistDisperser3D.set_weight_position(index, weight_position) end

---@param index integer
---@return number
function BoneTwistDisperser3D.get_weight_position(index) end

---@param index integer
---@param curve Curve
function BoneTwistDisperser3D.set_damping_curve(index, curve) end

---@param index integer
---@return Curve
function BoneTwistDisperser3D.get_damping_curve(index) end

---@param index integer
---@param joint integer
---@return string
function BoneTwistDisperser3D.get_joint_bone_name(index, joint) end

---@param index integer
---@param joint integer
---@return integer
function BoneTwistDisperser3D.get_joint_bone(index, joint) end

---@param index integer
---@param joint integer
---@return number
function BoneTwistDisperser3D.get_joint_twist_amount(index, joint) end

---@param index integer
---@param joint integer
---@param twist_amount number
function BoneTwistDisperser3D.set_joint_twist_amount(index, joint, twist_amount) end

---@param index integer
---@return integer
function BoneTwistDisperser3D.get_joint_count(index) end
