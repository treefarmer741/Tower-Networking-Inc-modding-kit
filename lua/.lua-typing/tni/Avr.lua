---@meta _
-- Generated API for game version 0.9.1

---@class Avr : RigidBody2D
---@field display RichTextLabel
---@field label_update_timer Timer
---@field product_name string
---@field description string
---@field text string
---@field extra_descriptions DeviceUnit.ExtraDescriptionType
---@field price integer
---@field alternate_listing_image Texture2D
---@field base_warranty_days integer
---@field base_warranty_cycles integer
---@field sale_warranty integer
---@field recycle_price_factor number
---@field recycle_price integer
---@field force_auto_config_powctl_based_on_logctl boolean
---@field force_auto_config_nbw_based_on_ports boolean
---@field force_auto_config_logctl_powerload boolean
---@field warranty_period_remaining integer
---@field defect_possibility boolean
---@field auto_config_bw_multiplier number
---@field auto_config_pload_multiplier number
---@field obtained_from string
---@field custom_user_note string
---@field asset_registration_day integer
---@field auto_servicing_enabled boolean
---@field auto_replacement_cost integer
---@field current_floor_num integer
---@field device_hardware_class DeviceUnit.DeviceHardwareClass
---@field condition DeviceUnit.Condition
---@field mount_type DeviceUnit.MountType
---@field bw_per_second number
---@field reliability_flt number
---@field device_rendered_description string
---@field logic_controller LogicController
---@field power_controller PowerController
---@field mp_spawn MultiplayerSpawner
---@field mwtwn Tween
---@field base_mounted_area Object
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
local Avr = {}

function Avr.play_surge_effects() end

---@param disptext string
function Avr.set_disp(disptext) end

function Avr.apply_autoconfig() end

---@param new_pos Vector2
function Avr.reposition(new_pos) end

---@param new_pos Vector2
function Avr.elevator_move(new_pos) end

---@return Object
function Avr.debug_monitor_callback() end

---@return Object
function Avr.debug_mux_setup() end

---@return Object
function Avr.update_in_trolley_state() end

---@param new_picker Object
---@return boolean
function Avr.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function Avr.drop(impulse) end

function Avr.reset_child_z_index() end

---@param new_state boolean
function Avr.set_autosvc(new_state) end

---@param new_value string
function Avr.update_user_note(new_value) end

function Avr.remove_and_free_object() end

function Avr.reset_child_z_index() end

---@param base_val integer
function Avr.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function Avr.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function Avr.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function Avr.drop(impulse) end

---@param gpos Vector2
function Avr.setup_teleport(gpos) end
