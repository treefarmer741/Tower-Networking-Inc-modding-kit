---@meta _
-- Generated API for game version 0.12.1

---@class TwoBoneIK3D : IKModifier3D
---@field setting_count Settings,settings/
local TwoBoneIK3D = {}

---@param index integer
---@param target_node string
function TwoBoneIK3D.set_target_node(index, target_node) end

---@param index integer
---@return string
function TwoBoneIK3D.get_target_node(index) end

---@param index integer
---@param pole_node string
function TwoBoneIK3D.set_pole_node(index, pole_node) end

---@param index integer
---@return string
function TwoBoneIK3D.get_pole_node(index) end

---@param index integer
---@param bone_name string
function TwoBoneIK3D.set_root_bone_name(index, bone_name) end

---@param index integer
---@return string
function TwoBoneIK3D.get_root_bone_name(index) end

---@param index integer
---@param bone integer
function TwoBoneIK3D.set_root_bone(index, bone) end

---@param index integer
---@return integer
function TwoBoneIK3D.get_root_bone(index) end

---@param index integer
---@param bone_name string
function TwoBoneIK3D.set_middle_bone_name(index, bone_name) end

---@param index integer
---@return string
function TwoBoneIK3D.get_middle_bone_name(index) end

---@param index integer
---@param bone integer
function TwoBoneIK3D.set_middle_bone(index, bone) end

---@param index integer
---@return integer
function TwoBoneIK3D.get_middle_bone(index) end

---@param index integer
---@param direction SkeletonModifier3D.SecondaryDirection
function TwoBoneIK3D.set_pole_direction(index, direction) end

---@param index integer
---@return SkeletonModifier3D.SecondaryDirection
function TwoBoneIK3D.get_pole_direction(index) end

---@param index integer
---@param vector Vector3
function TwoBoneIK3D.set_pole_direction_vector(index, vector) end

---@param index integer
---@return Vector3
function TwoBoneIK3D.get_pole_direction_vector(index) end

---@param index integer
---@param bone_name string
function TwoBoneIK3D.set_end_bone_name(index, bone_name) end

---@param index integer
---@return string
function TwoBoneIK3D.get_end_bone_name(index) end

---@param index integer
---@param bone integer
function TwoBoneIK3D.set_end_bone(index, bone) end

---@param index integer
---@return integer
function TwoBoneIK3D.get_end_bone(index) end

---@param index integer
---@param enabled boolean
function TwoBoneIK3D.set_use_virtual_end(index, enabled) end

---@param index integer
---@return boolean
function TwoBoneIK3D.is_using_virtual_end(index) end

---@param index integer
---@param enabled boolean
function TwoBoneIK3D.set_extend_end_bone(index, enabled) end

---@param index integer
---@return boolean
function TwoBoneIK3D.is_end_bone_extended(index) end

---@param index integer
---@param bone_direction SkeletonModifier3D.BoneDirection
function TwoBoneIK3D.set_end_bone_direction(index, bone_direction) end

---@param index integer
---@return SkeletonModifier3D.BoneDirection
function TwoBoneIK3D.get_end_bone_direction(index) end

---@param index integer
---@param length number
function TwoBoneIK3D.set_end_bone_length(index, length) end

---@param index integer
---@return number
function TwoBoneIK3D.get_end_bone_length(index) end
