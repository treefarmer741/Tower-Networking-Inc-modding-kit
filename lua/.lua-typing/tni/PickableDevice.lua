---@meta _
-- Generated API for game version 0.9.1

---@class PickableDevice : RigidBody2D
---@field hard_contact_tolerance number
---@field hard_contact_audio AudioStreamPlayer2D
---@field base_size Vector2
---@field scaling_twn Tween
---@field picker Object
---@field pick_offset Vector2
---@field fixed boolean
---@field is_picked_by_mouse boolean
---@field is_picked boolean
---@field is_picked_by_attaching boolean
---@field picker_type PickableRigidBody2D.PICKER_TYPE
local PickableDevice = {}

function PickableDevice.reset_child_z_index() end

---@param base_val integer
function PickableDevice.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function PickableDevice.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function PickableDevice.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function PickableDevice.drop(impulse) end

---@param gpos Vector2
function PickableDevice.setup_teleport(gpos) end
