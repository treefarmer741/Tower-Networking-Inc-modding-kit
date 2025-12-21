---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsServer3DExtension : PhysicsServer3D
local PhysicsServer3DExtension = {}

---@param body RID
---@return boolean
function PhysicsServer3DExtension.body_test_motion_is_excluding_body(body) end

---@param object integer
---@return boolean
function PhysicsServer3DExtension.body_test_motion_is_excluding_object(object) end
