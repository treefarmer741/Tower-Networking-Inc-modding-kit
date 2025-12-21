---@meta _
-- Generated API for game version 0.9.1

---@class Input : Object
---@field mouse_mode integer
---@field use_accumulated_input boolean
---@field emulate_mouse_from_touch boolean
---@field emulate_touch_from_mouse boolean
local Input = {}

---@return boolean
function Input.is_anything_pressed() end

---@param keycode Key
---@return boolean
function Input.is_key_pressed(keycode) end

---@param keycode Key
---@return boolean
function Input.is_physical_key_pressed(keycode) end

---@param keycode Key
---@return boolean
function Input.is_key_label_pressed(keycode) end

---@param button MouseButton
---@return boolean
function Input.is_mouse_button_pressed(button) end

---@param device integer
---@param button JoyButton
---@return boolean
function Input.is_joy_button_pressed(device, button) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function Input.is_action_pressed(action, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function Input.is_action_just_pressed(action, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function Input.is_action_just_released(action, exact_match) end

---@param action string
---@param event InputEvent
---@param exact_match boolean?  # Default = false
---@return boolean
function Input.is_action_just_pressed_by_event(action, event, exact_match) end

---@param action string
---@param event InputEvent
---@param exact_match boolean?  # Default = false
---@return boolean
function Input.is_action_just_released_by_event(action, event, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return number
function Input.get_action_strength(action, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return number
function Input.get_action_raw_strength(action, exact_match) end

---@param negative_action string
---@param positive_action string
---@return number
function Input.get_axis(negative_action, positive_action) end

---@param negative_x string
---@param positive_x string
---@param negative_y string
---@param positive_y string
---@param deadzone number?  # Default = -1.0
---@return Vector2
function Input.get_vector(negative_x, positive_x, negative_y, positive_y, deadzone) end

---@param mapping string
---@param update_existing boolean?  # Default = false
function Input.add_joy_mapping(mapping, update_existing) end

---@param guid string
function Input.remove_joy_mapping(guid) end

---@param device integer
---@return boolean
function Input.is_joy_known(device) end

---@param device integer
---@param axis JoyAxis
---@return number
function Input.get_joy_axis(device, axis) end

---@param device integer
---@return string
function Input.get_joy_name(device) end

---@param device integer
---@return string
function Input.get_joy_guid(device) end

---@param device integer
---@return table<any,any>
function Input.get_joy_info(device) end

---@param vendor_id integer
---@param product_id integer
---@return boolean
function Input.should_ignore_device(vendor_id, product_id) end

---@return Array<integer>
function Input.get_connected_joypads() end

---@param device integer
---@return Vector2
function Input.get_joy_vibration_strength(device) end

---@param device integer
---@return number
function Input.get_joy_vibration_duration(device) end

---@param device integer
---@param weak_magnitude number
---@param strong_magnitude number
---@param duration number?  # Default = 0
function Input.start_joy_vibration(device, weak_magnitude, strong_magnitude, duration) end

---@param device integer
function Input.stop_joy_vibration(device) end

---@param duration_ms integer?  # Default = 500
---@param amplitude number?  # Default = -1.0
function Input.vibrate_handheld(duration_ms, amplitude) end

---@return Vector3
function Input.get_gravity() end

---@return Vector3
function Input.get_accelerometer() end

---@return Vector3
function Input.get_magnetometer() end

---@return Vector3
function Input.get_gyroscope() end

---@param value Vector3
function Input.set_gravity(value) end

---@param value Vector3
function Input.set_accelerometer(value) end

---@param value Vector3
function Input.set_magnetometer(value) end

---@param value Vector3
function Input.set_gyroscope(value) end

---@return Vector2
function Input.get_last_mouse_velocity() end

---@return Vector2
function Input.get_last_mouse_screen_velocity() end

---@return MouseButtonMask
function Input.get_mouse_button_mask() end

---@param mode Input.MouseMode
function Input.set_mouse_mode(mode) end

---@return Input.MouseMode
function Input.get_mouse_mode() end

---@param position Vector2
function Input.warp_mouse(position) end

---@param action string
---@param strength number?  # Default = 1.0
function Input.action_press(action, strength) end

---@param action string
function Input.action_release(action) end

---@param shape Input.CursorShape?  # Default = 0
function Input.set_default_cursor_shape(shape) end

---@return Input.CursorShape
function Input.get_current_cursor_shape() end

---@param image Resource
---@param shape Input.CursorShape?  # Default = 0
---@param hotspot Vector2?  # Default = (0.0, 0.0)
function Input.set_custom_mouse_cursor(image, shape, hotspot) end

---@param event InputEvent
function Input.parse_input_event(event) end

---@param enable boolean
function Input.set_use_accumulated_input(enable) end

---@return boolean
function Input.is_using_accumulated_input() end

function Input.flush_buffered_events() end

---@param enable boolean
function Input.set_emulate_mouse_from_touch(enable) end

---@return boolean
function Input.is_emulating_mouse_from_touch() end

---@param enable boolean
function Input.set_emulate_touch_from_mouse(enable) end

---@return boolean
function Input.is_emulating_touch_from_mouse() end
