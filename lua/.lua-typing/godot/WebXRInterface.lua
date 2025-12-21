---@meta _
-- Generated API for game version 0.9.1

---@class WebXRInterface : XRInterface
---@field session_mode string
---@field required_features string
---@field optional_features string
---@field requested_reference_space_types string
---@field reference_space_type string
---@field enabled_features string
---@field visibility_state string
local WebXRInterface = {}

---@param session_mode string
function WebXRInterface.is_session_supported(session_mode) end

---@param session_mode string
function WebXRInterface.set_session_mode(session_mode) end

---@return string
function WebXRInterface.get_session_mode() end

---@param required_features string
function WebXRInterface.set_required_features(required_features) end

---@return string
function WebXRInterface.get_required_features() end

---@param optional_features string
function WebXRInterface.set_optional_features(optional_features) end

---@return string
function WebXRInterface.get_optional_features() end

---@return string
function WebXRInterface.get_reference_space_type() end

---@return string
function WebXRInterface.get_enabled_features() end

---@param requested_reference_space_types string
function WebXRInterface.set_requested_reference_space_types(requested_reference_space_types) end

---@return string
function WebXRInterface.get_requested_reference_space_types() end

---@param input_source_id integer
---@return boolean
function WebXRInterface.is_input_source_active(input_source_id) end

---@param input_source_id integer
---@return XRControllerTracker
function WebXRInterface.get_input_source_tracker(input_source_id) end

---@param input_source_id integer
---@return WebXRInterface.TargetRayMode
function WebXRInterface.get_input_source_target_ray_mode(input_source_id) end

---@return string
function WebXRInterface.get_visibility_state() end

---@return number
function WebXRInterface.get_display_refresh_rate() end

---@param refresh_rate number
function WebXRInterface.set_display_refresh_rate(refresh_rate) end

---@return Array<any>
function WebXRInterface.get_available_display_refresh_rates() end
