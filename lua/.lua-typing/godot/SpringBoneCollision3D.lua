---@meta _
-- Generated API for game version 0.10.0

---@class SpringBoneCollision3D : Node3D
---@field bone_name string
---@field bone integer
---@field position_offset Vector3
---@field rotation_offset Quaternion
local SpringBoneCollision3D = {}

---@return Skeleton3D
function SpringBoneCollision3D.get_skeleton() end

---@param bone_name string
function SpringBoneCollision3D.set_bone_name(bone_name) end

---@return string
function SpringBoneCollision3D.get_bone_name() end

---@param bone integer
function SpringBoneCollision3D.set_bone(bone) end

---@return integer
function SpringBoneCollision3D.get_bone() end

---@param offset Vector3
function SpringBoneCollision3D.set_position_offset(offset) end

---@return Vector3
function SpringBoneCollision3D.get_position_offset() end

---@param offset Quaternion
function SpringBoneCollision3D.set_rotation_offset(offset) end

---@return Quaternion
function SpringBoneCollision3D.get_rotation_offset() end
