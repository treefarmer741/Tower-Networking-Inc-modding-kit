---@meta _
-- Generated API for game version 0.10.0

---@class AnimationMixer : Node
---@field active boolean
---@field deterministic boolean
---@field reset_on_save boolean
---@field root_node string
---@field root_motion_track string
---@field root_motion_local boolean
---@field audio_max_polyphony integer
---@field callback_mode_process integer
---@field callback_mode_method integer
---@field callback_mode_discrete integer
local AnimationMixer = {}

---@param name string
---@param library AnimationLibrary
---@return Error
function AnimationMixer.add_animation_library(name, library) end

---@param name string
function AnimationMixer.remove_animation_library(name) end

---@param name string
---@param newname string
function AnimationMixer.rename_animation_library(name, newname) end

---@param name string
---@return boolean
function AnimationMixer.has_animation_library(name) end

---@param name string
---@return AnimationLibrary
function AnimationMixer.get_animation_library(name) end

---@return Array<StringName>
function AnimationMixer.get_animation_library_list() end

---@param name string
---@return boolean
function AnimationMixer.has_animation(name) end

---@param name string
---@return Animation
function AnimationMixer.get_animation(name) end

---@return PackedStringArray
function AnimationMixer.get_animation_list() end

---@param active boolean
function AnimationMixer.set_active(active) end

---@return boolean
function AnimationMixer.is_active() end

---@param deterministic boolean
function AnimationMixer.set_deterministic(deterministic) end

---@return boolean
function AnimationMixer.is_deterministic() end

---@param path string
function AnimationMixer.set_root_node(path) end

---@return string
function AnimationMixer.get_root_node() end

---@param mode AnimationMixer.AnimationCallbackModeProcess
function AnimationMixer.set_callback_mode_process(mode) end

---@return AnimationMixer.AnimationCallbackModeProcess
function AnimationMixer.get_callback_mode_process() end

---@param mode AnimationMixer.AnimationCallbackModeMethod
function AnimationMixer.set_callback_mode_method(mode) end

---@return AnimationMixer.AnimationCallbackModeMethod
function AnimationMixer.get_callback_mode_method() end

---@param mode AnimationMixer.AnimationCallbackModeDiscrete
function AnimationMixer.set_callback_mode_discrete(mode) end

---@return AnimationMixer.AnimationCallbackModeDiscrete
function AnimationMixer.get_callback_mode_discrete() end

---@param max_polyphony integer
function AnimationMixer.set_audio_max_polyphony(max_polyphony) end

---@return integer
function AnimationMixer.get_audio_max_polyphony() end

---@param path string
function AnimationMixer.set_root_motion_track(path) end

---@return string
function AnimationMixer.get_root_motion_track() end

---@param enabled boolean
function AnimationMixer.set_root_motion_local(enabled) end

---@return boolean
function AnimationMixer.is_root_motion_local() end

---@return Vector3
function AnimationMixer.get_root_motion_position() end

---@return Quaternion
function AnimationMixer.get_root_motion_rotation() end

---@return Vector3
function AnimationMixer.get_root_motion_scale() end

---@return Vector3
function AnimationMixer.get_root_motion_position_accumulator() end

---@return Quaternion
function AnimationMixer.get_root_motion_rotation_accumulator() end

---@return Vector3
function AnimationMixer.get_root_motion_scale_accumulator() end

function AnimationMixer.clear_caches() end

---@param delta number
function AnimationMixer.advance(delta) end

---@param name string
---@param duration number
---@param trans_type Tween.TransitionType?  # Default = 0
---@param ease_type Tween.EaseType?  # Default = 0
function AnimationMixer.capture(name, duration, trans_type, ease_type) end

---@param enabled boolean
function AnimationMixer.set_reset_on_save_enabled(enabled) end

---@return boolean
function AnimationMixer.is_reset_on_save_enabled() end

---@param animation Animation
---@return string
function AnimationMixer.find_animation(animation) end

---@param animation Animation
---@return string
function AnimationMixer.find_animation_library(animation) end
