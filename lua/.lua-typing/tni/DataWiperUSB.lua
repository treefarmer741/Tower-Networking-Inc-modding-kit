---@meta _
-- Generated API for game version 0.10.0

---@class DataWiperUSB : RigidBody2D
---@field product_name string
---@field price integer
---@field description string
---@field alternate_listing_image Texture2D
---@field rendered_description string
---@field mwtwn Tween
---@field compatibles Array<any>
---@field connection Object
---@field cable_joint PinJoint2D
---@field attached_device_unit DeviceUnit
---@field controller GraphController
---@field fixed_pick_offset Vector2
---@field is_plugged_in boolean
---@field applied_color Color
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
local DataWiperUSB = {}

function DataWiperUSB.install() end

function DataWiperUSB.uninstall() end

function DataWiperUSB.boot_peripheral() end

function DataWiperUSB.install() end

function DataWiperUSB.uninstall() end

function DataWiperUSB.boot_peripheral() end

---@param new_pos Vector2
function DataWiperUSB.reposition(new_pos) end

---@param new_pos Vector2
function DataWiperUSB.elevator_move(new_pos) end

function DataWiperUSB.remove_and_free_object() end

---@param color_val Color
function DataWiperUSB.apply_color(color_val) end

---@param a Object
function DataWiperUSB.plug_in(a) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function DataWiperUSB.drop(impulse) end

---@param a Socket
function DataWiperUSB.srv_handle_pickup(a) end

---@param new_picker Object
---@return boolean
function DataWiperUSB.pickup(new_picker) end

function DataWiperUSB.reset_child_z_index() end

---@param base_val integer
function DataWiperUSB.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function DataWiperUSB.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function DataWiperUSB.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function DataWiperUSB.drop(impulse) end

---@param gpos Vector2
function DataWiperUSB.setup_teleport(gpos) end
