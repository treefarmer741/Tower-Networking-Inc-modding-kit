---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRInterface : XRInterface
---@field display_refresh_rate number
---@field render_target_size_multiplier number
---@field foveation_level integer
---@field foveation_dynamic boolean
---@field vrs_min_radius number
---@field vrs_strength number
local OpenXRInterface = {}

---@return OpenXRInterface.SessionState
function OpenXRInterface.get_session_state() end

---@return number
function OpenXRInterface.get_display_refresh_rate() end

---@param refresh_rate number
function OpenXRInterface.set_display_refresh_rate(refresh_rate) end

---@return number
function OpenXRInterface.get_render_target_size_multiplier() end

---@param multiplier number
function OpenXRInterface.set_render_target_size_multiplier(multiplier) end

---@return boolean
function OpenXRInterface.is_foveation_supported() end

---@return integer
function OpenXRInterface.get_foveation_level() end

---@param foveation_level integer
function OpenXRInterface.set_foveation_level(foveation_level) end

---@return boolean
function OpenXRInterface.get_foveation_dynamic() end

---@param foveation_dynamic boolean
function OpenXRInterface.set_foveation_dynamic(foveation_dynamic) end

---@param name string
---@return boolean
function OpenXRInterface.is_action_set_active(name) end

---@param name string
---@param active boolean
function OpenXRInterface.set_action_set_active(name, active) end

---@return Array<any>
function OpenXRInterface.get_action_sets() end

---@return Array<any>
function OpenXRInterface.get_available_display_refresh_rates() end

---@param hand OpenXRInterface.Hand
---@param motion_range OpenXRInterface.HandMotionRange
function OpenXRInterface.set_motion_range(hand, motion_range) end

---@param hand OpenXRInterface.Hand
---@return OpenXRInterface.HandMotionRange
function OpenXRInterface.get_motion_range(hand) end

---@param hand OpenXRInterface.Hand
---@return OpenXRInterface.HandTrackedSource
function OpenXRInterface.get_hand_tracking_source(hand) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return OpenXRInterface.HandJointFlags
function OpenXRInterface.get_hand_joint_flags(hand, joint) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return Quaternion
function OpenXRInterface.get_hand_joint_rotation(hand, joint) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return Vector3
function OpenXRInterface.get_hand_joint_position(hand, joint) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return number
function OpenXRInterface.get_hand_joint_radius(hand, joint) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return Vector3
function OpenXRInterface.get_hand_joint_linear_velocity(hand, joint) end

---@param hand OpenXRInterface.Hand
---@param joint OpenXRInterface.HandJoints
---@return Vector3
function OpenXRInterface.get_hand_joint_angular_velocity(hand, joint) end

---@return boolean
function OpenXRInterface.is_hand_tracking_supported() end

---@return boolean
function OpenXRInterface.is_hand_interaction_supported() end

---@return boolean
function OpenXRInterface.is_eye_gaze_interaction_supported() end

---@return number
function OpenXRInterface.get_vrs_min_radius() end

---@param radius number
function OpenXRInterface.set_vrs_min_radius(radius) end

---@return number
function OpenXRInterface.get_vrs_strength() end

---@param strength number
function OpenXRInterface.set_vrs_strength(strength) end

---@param level OpenXRInterface.PerfSettingsLevel
function OpenXRInterface.set_cpu_level(level) end

---@param level OpenXRInterface.PerfSettingsLevel
function OpenXRInterface.set_gpu_level(level) end
