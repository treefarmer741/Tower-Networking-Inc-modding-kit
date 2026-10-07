---@meta _
-- Generated API for game version 0.13.1

---@class BladeServer : DeviceUnit
---@field power_socket Socket
---@field link_socket LogicControllerSocket
---@field presence_led PoweredLight
---@field bay_lock_switch ToggleSwitch
---@field port_label RichTextLabel
---@field slot PeripheralSocket
---@field port_display string
---@field product_name string
---@field description string
---@field text string
---@field extra_descriptions DeviceUnit.ExtraDescriptionType
---@field price integer
---@field alternate_listing_image Texture2D
---@field base_warranty_days integer
---@field base_warranty_cycles integer
---@field sale_warranty integer
---@field terminal_failure_prob number
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
---@field data_migration_enabled boolean
---@field is_mount_locked boolean
---@field screw_sprite Object
---@field auto_replacement_multiplier integer
---@field auto_replacement_cost integer
---@field memento_daily_fee integer
---@field current_floor_num integer
---@field device_application_unlocks Array<any>
---@field device_hardware_class DeviceUnit.DeviceHardwareClass
---@field condition DeviceUnit.Condition
---@field mount_type DeviceUnit.MountType
---@field bw_per_second number
---@field reliability_flt number
---@field rng_fail_chance number
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
local BladeServer = {}

---@param new_pos Vector2
function BladeServer.elevator_move(new_pos) end

---@return LogicControllerSocket
function BladeServer.get_bay_port() end

---@param extra_devices integer?  # Default = 0
---@return integer
function BladeServer.get_daily_cost_multiplier(extra_devices) end

function BladeServer.apply_autoconfig() end

---@param new_pos Vector2
function BladeServer.reposition(new_pos) end

---@param new_pos Vector2
function BladeServer.elevator_move(new_pos) end

---@return number
function BladeServer.get_device_bounding_height() end

---@return Vector2
function BladeServer.get_global_y_range() end

---@return Vector2
function BladeServer.get_local_y_range() end

---@return Object
function BladeServer.debug_monitor_callback() end

---@return Object
function BladeServer.debug_mux_setup() end

---@return Object
function BladeServer.update_in_trolley_state() end

---@param new_picker Object
---@return boolean
function BladeServer.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function BladeServer.drop(impulse) end

function BladeServer.reset_child_z_index() end

---@param new_state boolean
function BladeServer.set_autosvc(new_state) end

---@param new_state boolean
function BladeServer.set_data_migration(new_state) end

---@param new_value string
function BladeServer.update_user_note(new_value) end

function BladeServer.toggle_mount_lock() end

function BladeServer.remove_and_free_object() end

function BladeServer.reset_child_z_index() end

---@param base_val integer
function BladeServer.lift_child_z_index(base_val) end

---@param test_picker Object
---@return Object
function BladeServer.get_picker_type(test_picker) end

---@param new_picker Object
---@return boolean
function BladeServer.pickup(new_picker) end

---@param impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function BladeServer.drop(impulse) end

---@param gpos Vector2
function BladeServer.setup_teleport(gpos) end
