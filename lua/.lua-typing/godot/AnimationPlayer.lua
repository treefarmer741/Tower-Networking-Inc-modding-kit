---@meta _
-- Generated API for game version 0.9.1

---@class AnimationPlayer : AnimationMixer
---@field current_animation string
---@field assigned_animation string
---@field autoplay string
---@field current_animation_length number
---@field current_animation_position number
---@field playback_auto_capture boolean
---@field playback_auto_capture_duration number
---@field playback_auto_capture_transition_type integer
---@field playback_auto_capture_ease_type integer
---@field playback_default_blend_time number
---@field speed_scale number
---@field movie_quit_on_finish boolean
local AnimationPlayer = {}

---@param animation_from string
---@param animation_to string
function AnimationPlayer.animation_set_next(animation_from, animation_to) end

---@param animation_from string
---@return string
function AnimationPlayer.animation_get_next(animation_from) end

---@param animation_from string
---@param animation_to string
---@param sec number
function AnimationPlayer.set_blend_time(animation_from, animation_to, sec) end

---@param animation_from string
---@param animation_to string
---@return number
function AnimationPlayer.get_blend_time(animation_from, animation_to) end

---@param sec number
function AnimationPlayer.set_default_blend_time(sec) end

---@return number
function AnimationPlayer.get_default_blend_time() end

---@param auto_capture boolean
function AnimationPlayer.set_auto_capture(auto_capture) end

---@return boolean
function AnimationPlayer.is_auto_capture() end

---@param auto_capture_duration number
function AnimationPlayer.set_auto_capture_duration(auto_capture_duration) end

---@return number
function AnimationPlayer.get_auto_capture_duration() end

---@param auto_capture_transition_type Tween.TransitionType
function AnimationPlayer.set_auto_capture_transition_type(auto_capture_transition_type) end

---@return Tween.TransitionType
function AnimationPlayer.get_auto_capture_transition_type() end

---@param auto_capture_ease_type Tween.EaseType
function AnimationPlayer.set_auto_capture_ease_type(auto_capture_ease_type) end

---@return Tween.EaseType
function AnimationPlayer.get_auto_capture_ease_type() end

---@param name string?  # Default = 
---@param custom_blend number?  # Default = -1
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
function AnimationPlayer.play(name, custom_blend, custom_speed, from_end) end

---@param name string?  # Default = 
---@param start_marker string?  # Default = 
---@param end_marker string?  # Default = 
---@param custom_blend number?  # Default = -1
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
function AnimationPlayer.play_section_with_markers(name, start_marker, end_marker, custom_blend, custom_speed, from_end) end

---@param name string?  # Default = 
---@param start_time number?  # Default = -1
---@param end_time number?  # Default = -1
---@param custom_blend number?  # Default = -1
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
function AnimationPlayer.play_section(name, start_time, end_time, custom_blend, custom_speed, from_end) end

---@param name string?  # Default = 
---@param custom_blend number?  # Default = -1
function AnimationPlayer.play_backwards(name, custom_blend) end

---@param name string?  # Default = 
---@param start_marker string?  # Default = 
---@param end_marker string?  # Default = 
---@param custom_blend number?  # Default = -1
function AnimationPlayer.play_section_with_markers_backwards(name, start_marker, end_marker, custom_blend) end

---@param name string?  # Default = 
---@param start_time number?  # Default = -1
---@param end_time number?  # Default = -1
---@param custom_blend number?  # Default = -1
function AnimationPlayer.play_section_backwards(name, start_time, end_time, custom_blend) end

---@param name string?  # Default = 
---@param duration number?  # Default = -1.0
---@param custom_blend number?  # Default = -1
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
---@param trans_type Tween.TransitionType?  # Default = 0
---@param ease_type Tween.EaseType?  # Default = 0
function AnimationPlayer.play_with_capture(name, duration, custom_blend, custom_speed, from_end, trans_type, ease_type) end

function AnimationPlayer.pause() end

---@param keep_state boolean?  # Default = false
function AnimationPlayer.stop(keep_state) end

---@return boolean
function AnimationPlayer.is_playing() end

---@param animation string
function AnimationPlayer.set_current_animation(animation) end

---@return string
function AnimationPlayer.get_current_animation() end

---@param animation string
function AnimationPlayer.set_assigned_animation(animation) end

---@return string
function AnimationPlayer.get_assigned_animation() end

---@param name string
function AnimationPlayer.queue(name) end

---@return PackedStringArray
function AnimationPlayer.get_queue() end

function AnimationPlayer.clear_queue() end

---@param speed number
function AnimationPlayer.set_speed_scale(speed) end

---@return number
function AnimationPlayer.get_speed_scale() end

---@return number
function AnimationPlayer.get_playing_speed() end

---@param name string
function AnimationPlayer.set_autoplay(name) end

---@return string
function AnimationPlayer.get_autoplay() end

---@param enabled boolean
function AnimationPlayer.set_movie_quit_on_finish_enabled(enabled) end

---@return boolean
function AnimationPlayer.is_movie_quit_on_finish_enabled() end

---@return number
function AnimationPlayer.get_current_animation_position() end

---@return number
function AnimationPlayer.get_current_animation_length() end

---@param start_marker string?  # Default = 
---@param end_marker string?  # Default = 
function AnimationPlayer.set_section_with_markers(start_marker, end_marker) end

---@param start_time number?  # Default = -1
---@param end_time number?  # Default = -1
function AnimationPlayer.set_section(start_time, end_time) end

function AnimationPlayer.reset_section() end

---@return number
function AnimationPlayer.get_section_start_time() end

---@return number
function AnimationPlayer.get_section_end_time() end

---@return boolean
function AnimationPlayer.has_section() end

---@param seconds number
---@param update boolean?  # Default = false
---@param update_only boolean?  # Default = false
function AnimationPlayer.seek(seconds, update, update_only) end

---@param mode AnimationPlayer.AnimationProcessCallback
function AnimationPlayer.set_process_callback(mode) end

---@return AnimationPlayer.AnimationProcessCallback
function AnimationPlayer.get_process_callback() end

---@param mode AnimationPlayer.AnimationMethodCallMode
function AnimationPlayer.set_method_call_mode(mode) end

---@return AnimationPlayer.AnimationMethodCallMode
function AnimationPlayer.get_method_call_mode() end

---@param path string
function AnimationPlayer.set_root(path) end

---@return string
function AnimationPlayer.get_root() end
