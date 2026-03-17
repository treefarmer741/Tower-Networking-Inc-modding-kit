---@meta _
-- Generated API for game version 0.10.0

---@class PickableRigidBody2D : RigidBody2D
---@field PZINDEX integer # Constant value: 2000
---@field MAX_SPEED number # Constant value: 1200.0
---@field MAX_SPEED_SQ number # Constant value: 1440000.0
---@field MAX_COLL_SQ number # Constant value: 90000.0
---@field scaling_twn Tween
---@field picker Object
---@field pick_offset Vector2
---@field fixed boolean
---@field is_picked_by_mouse boolean
---@field is_picked boolean
---@field is_picked_by_attaching boolean
---@field picker_type PickableRigidBody2D.PICKER_TYPE
local PickableRigidBody2D = {}
---@enum PickableRigidBody2D.PICKER_TYPE
PickableRigidBody2D.PICKER_TYPE = {
	["MOUSE"] = 0,
	["ATTACHED"] = 1,
	["NONE"] = 2,
}

function PickableRigidBody2D.reset_child_z_index() end

---@param base_val integer
function PickableRigidBody2D.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function PickableRigidBody2D.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function PickableRigidBody2D.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function PickableRigidBody2D.drop(impulse) end

---@param gpos Vector2
function PickableRigidBody2D.setup_teleport(gpos) end
