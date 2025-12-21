---@meta _
-- Generated API for game version 0.9.1

---@class PhysicalBone2D : RigidBody2D
---@field bone2d_nodepath string
---@field bone2d_index integer
---@field auto_configure_joint boolean
---@field simulate_physics boolean
---@field follow_bone_when_simulating boolean
local PhysicalBone2D = {}

---@return Joint2D
function PhysicalBone2D.get_joint() end

---@return boolean
function PhysicalBone2D.get_auto_configure_joint() end

---@param auto_configure_joint boolean
function PhysicalBone2D.set_auto_configure_joint(auto_configure_joint) end

---@param simulate_physics boolean
function PhysicalBone2D.set_simulate_physics(simulate_physics) end

---@return boolean
function PhysicalBone2D.get_simulate_physics() end

---@return boolean
function PhysicalBone2D.is_simulating_physics() end

---@param nodepath string
function PhysicalBone2D.set_bone2d_nodepath(nodepath) end

---@return string
function PhysicalBone2D.get_bone2d_nodepath() end

---@param bone_index integer
function PhysicalBone2D.set_bone2d_index(bone_index) end

---@return integer
function PhysicalBone2D.get_bone2d_index() end

---@param follow_bone boolean
function PhysicalBone2D.set_follow_bone_when_simulating(follow_bone) end

---@return boolean
function PhysicalBone2D.get_follow_bone_when_simulating() end
