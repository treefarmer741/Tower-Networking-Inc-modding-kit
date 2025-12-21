---@meta _
-- Generated API for game version 0.9.1

---@class CableOMatic : RigidBody2D
---@field stored_length integer
---@field max_stored_length integer
---@field max_make_length integer
---@field cable_make PackedScene
---@field color_variant Color
---@field storage_in StorageSocket
---@field color_ind_sprite Sprite2D
---@field remaining_len_display Label
---@field make_len_display Label
---@field make_len_slider Slider
---@field make_length integer
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
local CableOMatic = {}

function CableOMatic.apply_autoconfig() end

---@param new_pos Vector2
function CableOMatic.reposition(new_pos) end

---@param new_pos Vector2
function CableOMatic.elevator_move(new_pos) end

---@return Object
function CableOMatic.debug_monitor_callback() end

---@return Object
function CableOMatic.debug_mux_setup() end

---@return Object
function CableOMatic.update_in_trolley_state() end

---@param new_picker Object
---@return boolean
function CableOMatic.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function CableOMatic.drop(impulse) end

function CableOMatic.reset_child_z_index() end

---@param new_state boolean
function CableOMatic.set_autosvc(new_state) end

---@param new_value string
function CableOMatic.update_user_note(new_value) end

function CableOMatic.remove_and_free_object() end

function CableOMatic.reset_child_z_index() end

---@param base_val integer
function CableOMatic.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function CableOMatic.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function CableOMatic.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function CableOMatic.drop(impulse) end

---@param gpos Vector2
function CableOMatic.setup_teleport(gpos) end
