---@meta _
-- Generated API for game version 0.12.1

---@class PeripheralPlug : Plug
---@field product_name string
---@field price integer
---@field description string
---@field alternate_listing_image Texture2D
---@field rendered_description string
---@field mwtwn Tween
---@field compatibles Array<any>
---@field ripped_cable_ps PackedScene
---@field cable_make_type Plug.CableMakeType
---@field connection Object
---@field cable_joint PinJoint2D
---@field attached_device_unit DeviceUnit
---@field controller GraphController
---@field fixed_pick_offset Vector2
---@field is_plugged_in boolean
---@field applied_color Color
---@field is_labelled boolean
---@field label_text string
---@field label_color Color
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
local PeripheralPlug = {}

function PeripheralPlug.install() end

function PeripheralPlug.uninstall() end

function PeripheralPlug.boot_peripheral() end

---@param new_pos Vector2
function PeripheralPlug.reposition(new_pos) end

---@param new_pos Vector2
function PeripheralPlug.elevator_move(new_pos) end

function PeripheralPlug.remove_and_free_object() end

---@return PackedScene
function PeripheralPlug.get_cable_make_scene() end

---@param enabled boolean
function PeripheralPlug.set_highlight(enabled) end

---@param color_val Color
function PeripheralPlug.apply_color(color_val) end

---@param text string
---@param color Color
---@param labelled boolean
function PeripheralPlug.apply_label(text, color, labelled) end

---@param a Object
function PeripheralPlug.plug_in(a) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@param skip_autoplug boolean?  # Default = false
---@return boolean
function PeripheralPlug.drop(impulse, skip_autoplug) end

---@param a Socket
function PeripheralPlug.srv_handle_pickup(a) end

---@param new_picker Object
---@return boolean
function PeripheralPlug.pickup(new_picker) end

function PeripheralPlug.reset_child_z_index() end

---@param base_val integer
function PeripheralPlug.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function PeripheralPlug.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function PeripheralPlug.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function PeripheralPlug.drop(impulse) end

---@param gpos Vector2
function PeripheralPlug.setup_teleport(gpos) end
