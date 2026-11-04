---@meta _
-- Generated API for game version 0.10.0

---@class XRInterface : RefCounted
---@field interface_is_primary boolean
---@field xr_play_area_mode integer
---@field environment_blend_mode integer
---@field ar_is_anchor_detection_enabled boolean
local XRInterface = {}

---@return string
function XRInterface.get_name() end

---@return integer
function XRInterface.get_capabilities() end

---@return boolean
function XRInterface.is_primary() end

---@param primary boolean
function XRInterface.set_primary(primary) end

---@return boolean
function XRInterface.is_initialized() end

---@return boolean
function XRInterface.initialize() end

function XRInterface.uninitialize() end

---@return table<any,any>
function XRInterface.get_system_info() end

---@return XRInterface.TrackingStatus
function XRInterface.get_tracking_status() end

---@return Vector2
function XRInterface.get_render_target_size() end

---@return integer
function XRInterface.get_view_count() end

---@param action_name string
---@param tracker_name string
---@param frequency number
---@param amplitude number
---@param duration_sec number
---@param delay_sec number
function XRInterface.trigger_haptic_pulse(action_name, tracker_name, frequency, amplitude, duration_sec, delay_sec) end

---@param mode XRInterface.PlayAreaMode
---@return boolean
function XRInterface.supports_play_area_mode(mode) end

---@return XRInterface.PlayAreaMode
function XRInterface.get_play_area_mode() end

---@param mode XRInterface.PlayAreaMode
---@return boolean
function XRInterface.set_play_area_mode(mode) end

---@return PackedVector3Array
function XRInterface.get_play_area() end

---@return boolean
function XRInterface.get_anchor_detection_is_enabled() end

---@param enable boolean
function XRInterface.set_anchor_detection_is_enabled(enable) end

---@return integer
function XRInterface.get_camera_feed_id() end

---@return boolean
function XRInterface.is_passthrough_supported() end

---@return boolean
function XRInterface.is_passthrough_enabled() end

---@return boolean
function XRInterface.start_passthrough() end

function XRInterface.stop_passthrough() end

---@param view integer
---@param cam_transform Transform3D
---@return Transform3D
function XRInterface.get_transform_for_view(view, cam_transform) end

---@param view integer
---@param aspect number
---@param near number
---@param far number
---@return Projection
function XRInterface.get_projection_for_view(view, aspect, near, far) end

---@return Array<any>
function XRInterface.get_supported_environment_blend_modes() end

---@param mode XRInterface.EnvironmentBlendMode
---@return boolean
function XRInterface.set_environment_blend_mode(mode) end

---@return XRInterface.EnvironmentBlendMode
function XRInterface.get_environment_blend_mode() end
