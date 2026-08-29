---@meta _
-- Generated API for game version 0.12.1

---@class LimitAngularVelocityModifier3D : SkeletonModifier3D
---@field max_angular_velocity number
---@field exclude boolean
---@field chain_count Chains,chains/
---@field joint_count Joints,joints/
local LimitAngularVelocityModifier3D = {}

---@param index integer
---@param bone_name string
function LimitAngularVelocityModifier3D.set_root_bone_name(index, bone_name) end

---@param index integer
---@return string
function LimitAngularVelocityModifier3D.get_root_bone_name(index) end

---@param index integer
---@param bone integer
function LimitAngularVelocityModifier3D.set_root_bone(index, bone) end

---@param index integer
---@return integer
function LimitAngularVelocityModifier3D.get_root_bone(index) end

---@param index integer
---@param bone_name string
function LimitAngularVelocityModifier3D.set_end_bone_name(index, bone_name) end

---@param index integer
---@return string
function LimitAngularVelocityModifier3D.get_end_bone_name(index) end

---@param index integer
---@param bone integer
function LimitAngularVelocityModifier3D.set_end_bone(index, bone) end

---@param index integer
---@return integer
function LimitAngularVelocityModifier3D.get_end_bone(index) end

---@param count integer
function LimitAngularVelocityModifier3D.set_chain_count(count) end

---@return integer
function LimitAngularVelocityModifier3D.get_chain_count() end

function LimitAngularVelocityModifier3D.clear_chains() end

---@param angular_velocity number
function LimitAngularVelocityModifier3D.set_max_angular_velocity(angular_velocity) end

---@return number
function LimitAngularVelocityModifier3D.get_max_angular_velocity() end

---@param exclude boolean
function LimitAngularVelocityModifier3D.set_exclude(exclude) end

---@return boolean
function LimitAngularVelocityModifier3D.is_exclude() end

function LimitAngularVelocityModifier3D.reset() end
