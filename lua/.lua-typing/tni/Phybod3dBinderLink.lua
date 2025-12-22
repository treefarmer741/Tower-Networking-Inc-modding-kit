---@meta _
-- Generated API for game version 0.9.1

---@class Phybod3dBinderLink : RigidBody3D
---@field binder_joint PinJoint3D
---@field cshape CollisionShape3D
---@field global_binder_position Vector3
---@field length number
---@field base_joint PinJoint3D
local Phybod3dBinderLink = {}

---@param towards Vector3
function Phybod3dBinderLink.point_towards(towards) end

function Phybod3dBinderLink.clear_binds() end

---@param node Object
function Phybod3dBinderLink.bind(node) end

---@param new_length number
function Phybod3dBinderLink.adjust_length(new_length) end

---@param base_node Object?  # Default = <null>
function Phybod3dBinderLink.bind_base(base_node) end
