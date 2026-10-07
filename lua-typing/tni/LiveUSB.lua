---@meta _
-- Generated API for game version 0.13.1

---@class LiveUSB : RemovableStorageDevice
---@field program_scene PackedScene
---@field extra_storage integer
---@field available_sto integer
---@field claims table<any,any>
---@field payload table<any,any>
---@field used_capacity integer
---@field free_capacity integer
---@field payload_cost integer
---@field product_name string
---@field price integer
---@field description string
---@field alternate_listing_image Texture2D
---@field rendered_description string
---@field mwtwn Tween
---@field compatibles Array<any>
---@field ripped_cable_ps PackedScene
---@field cable_make_type Plug.CableMakeType
---@field color_plug_end boolean
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
local LiveUSB = {}

function LiveUSB.boot_peripheral() end

function LiveUSB.install() end

---@param filekey string
---@return Array<any>
function LiveUSB.can_release(filekey) end

---@param filekey string
function LiveUSB.release_file(filekey) end

function LiveUSB.uninstall() end

function LiveUSB.install() end

function LiveUSB.uninstall() end

---@param ctl Object
---@param filekey string
---@param ignore_current_holder boolean?  # Default = false
---@return Array<any>
function LiveUSB.can_claim(ctl, filekey, ignore_current_holder) end

---@param filekey string
function LiveUSB.claim_file(filekey) end

---@param filekey string
---@return Array<any>
function LiveUSB.can_release(filekey) end

---@param filekey string
function LiveUSB.release_file(filekey) end

function LiveUSB.wipe() end

function LiveUSB.install() end

function LiveUSB.uninstall() end

function LiveUSB.boot_peripheral() end

---@param new_pos Vector2
function LiveUSB.reposition(new_pos) end

---@param new_pos Vector2
function LiveUSB.elevator_move(new_pos) end

function LiveUSB.remove_and_free_object() end

---@return PackedScene
function LiveUSB.get_cable_make_scene() end

---@param enabled boolean
function LiveUSB.set_highlight(enabled) end

---@param color_val Color
function LiveUSB.apply_color(color_val) end

---@param text string
---@param color Color
---@param labelled boolean
function LiveUSB.apply_label(text, color, labelled) end

---@param a Object
function LiveUSB.plug_in(a) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@param skip_autoplug boolean?  # Default = false
---@return boolean
function LiveUSB.drop(impulse, skip_autoplug) end

---@param a Socket
function LiveUSB.srv_handle_pickup(a) end

---@param new_picker Object
---@return boolean
function LiveUSB.pickup(new_picker) end

function LiveUSB.reset_child_z_index() end

---@param base_val integer
function LiveUSB.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function LiveUSB.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function LiveUSB.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function LiveUSB.drop(impulse) end

---@param gpos Vector2
function LiveUSB.setup_teleport(gpos) end
