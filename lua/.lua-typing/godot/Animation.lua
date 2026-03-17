---@meta _
-- Generated API for game version 0.10.0

---@class Animation : Resource
---@field length number
---@field loop_mode integer
---@field step number
---@field capture_included boolean
local Animation = {}

---@param type Animation.TrackType
---@param at_position integer?  # Default = -1
---@return integer
function Animation.add_track(type, at_position) end

---@param track_idx integer
function Animation.remove_track(track_idx) end

---@return integer
function Animation.get_track_count() end

---@param track_idx integer
---@return Animation.TrackType
function Animation.track_get_type(track_idx) end

---@param track_idx integer
---@return string
function Animation.track_get_path(track_idx) end

---@param track_idx integer
---@param path string
function Animation.track_set_path(track_idx, path) end

---@param path string
---@param type Animation.TrackType
---@return integer
function Animation.find_track(path, type) end

---@param track_idx integer
function Animation.track_move_up(track_idx) end

---@param track_idx integer
function Animation.track_move_down(track_idx) end

---@param track_idx integer
---@param to_idx integer
function Animation.track_move_to(track_idx, to_idx) end

---@param track_idx integer
---@param with_idx integer
function Animation.track_swap(track_idx, with_idx) end

---@param track_idx integer
---@param imported boolean
function Animation.track_set_imported(track_idx, imported) end

---@param track_idx integer
---@return boolean
function Animation.track_is_imported(track_idx) end

---@param track_idx integer
---@param enabled boolean
function Animation.track_set_enabled(track_idx, enabled) end

---@param track_idx integer
---@return boolean
function Animation.track_is_enabled(track_idx) end

---@param track_idx integer
---@param time number
---@param position Vector3
---@return integer
function Animation.position_track_insert_key(track_idx, time, position) end

---@param track_idx integer
---@param time number
---@param rotation Quaternion
---@return integer
function Animation.rotation_track_insert_key(track_idx, time, rotation) end

---@param track_idx integer
---@param time number
---@param scale Vector3
---@return integer
function Animation.scale_track_insert_key(track_idx, time, scale) end

---@param track_idx integer
---@param time number
---@param amount number
---@return integer
function Animation.blend_shape_track_insert_key(track_idx, time, amount) end

---@param track_idx integer
---@param time_sec number
---@param backward boolean?  # Default = false
---@return Vector3
function Animation.position_track_interpolate(track_idx, time_sec, backward) end

---@param track_idx integer
---@param time_sec number
---@param backward boolean?  # Default = false
---@return Quaternion
function Animation.rotation_track_interpolate(track_idx, time_sec, backward) end

---@param track_idx integer
---@param time_sec number
---@param backward boolean?  # Default = false
---@return Vector3
function Animation.scale_track_interpolate(track_idx, time_sec, backward) end

---@param track_idx integer
---@param time_sec number
---@param backward boolean?  # Default = false
---@return number
function Animation.blend_shape_track_interpolate(track_idx, time_sec, backward) end

---@param track_idx integer
---@param time number
---@param key Object
---@param transition number?  # Default = 1
---@return integer
function Animation.track_insert_key(track_idx, time, key, transition) end

---@param track_idx integer
---@param key_idx integer
function Animation.track_remove_key(track_idx, key_idx) end

---@param track_idx integer
---@param time number
function Animation.track_remove_key_at_time(track_idx, time) end

---@param track_idx integer
---@param key integer
---@param value Object
function Animation.track_set_key_value(track_idx, key, value) end

---@param track_idx integer
---@param key_idx integer
---@param transition number
function Animation.track_set_key_transition(track_idx, key_idx, transition) end

---@param track_idx integer
---@param key_idx integer
---@param time number
function Animation.track_set_key_time(track_idx, key_idx, time) end

---@param track_idx integer
---@param key_idx integer
---@return number
function Animation.track_get_key_transition(track_idx, key_idx) end

---@param track_idx integer
---@return integer
function Animation.track_get_key_count(track_idx) end

---@param track_idx integer
---@param key_idx integer
---@return Object
function Animation.track_get_key_value(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return number
function Animation.track_get_key_time(track_idx, key_idx) end

---@param track_idx integer
---@param time number
---@param find_mode Animation.FindMode?  # Default = 0
---@param limit boolean?  # Default = false
---@param backward boolean?  # Default = false
---@return integer
function Animation.track_find_key(track_idx, time, find_mode, limit, backward) end

---@param track_idx integer
---@param interpolation Animation.InterpolationType
function Animation.track_set_interpolation_type(track_idx, interpolation) end

---@param track_idx integer
---@return Animation.InterpolationType
function Animation.track_get_interpolation_type(track_idx) end

---@param track_idx integer
---@param interpolation boolean
function Animation.track_set_interpolation_loop_wrap(track_idx, interpolation) end

---@param track_idx integer
---@return boolean
function Animation.track_get_interpolation_loop_wrap(track_idx) end

---@param track_idx integer
---@return boolean
function Animation.track_is_compressed(track_idx) end

---@param track_idx integer
---@param mode Animation.UpdateMode
function Animation.value_track_set_update_mode(track_idx, mode) end

---@param track_idx integer
---@return Animation.UpdateMode
function Animation.value_track_get_update_mode(track_idx) end

---@param track_idx integer
---@param time_sec number
---@param backward boolean?  # Default = false
---@return Object
function Animation.value_track_interpolate(track_idx, time_sec, backward) end

---@param track_idx integer
---@param key_idx integer
---@return string
function Animation.method_track_get_name(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return Array<any>
function Animation.method_track_get_params(track_idx, key_idx) end

---@param track_idx integer
---@param time number
---@param value number
---@param in_handle Vector2?  # Default = (0.0, 0.0)
---@param out_handle Vector2?  # Default = (0.0, 0.0)
---@return integer
function Animation.bezier_track_insert_key(track_idx, time, value, in_handle, out_handle) end

---@param track_idx integer
---@param key_idx integer
---@param value number
function Animation.bezier_track_set_key_value(track_idx, key_idx, value) end

---@param track_idx integer
---@param key_idx integer
---@param in_handle Vector2
---@param balanced_value_time_ratio number?  # Default = 1.0
function Animation.bezier_track_set_key_in_handle(track_idx, key_idx, in_handle, balanced_value_time_ratio) end

---@param track_idx integer
---@param key_idx integer
---@param out_handle Vector2
---@param balanced_value_time_ratio number?  # Default = 1.0
function Animation.bezier_track_set_key_out_handle(track_idx, key_idx, out_handle, balanced_value_time_ratio) end

---@param track_idx integer
---@param key_idx integer
---@return number
function Animation.bezier_track_get_key_value(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return Vector2
function Animation.bezier_track_get_key_in_handle(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return Vector2
function Animation.bezier_track_get_key_out_handle(track_idx, key_idx) end

---@param track_idx integer
---@param time number
---@return number
function Animation.bezier_track_interpolate(track_idx, time) end

---@param track_idx integer
---@param time number
---@param stream Resource
---@param start_offset number?  # Default = 0
---@param end_offset number?  # Default = 0
---@return integer
function Animation.audio_track_insert_key(track_idx, time, stream, start_offset, end_offset) end

---@param track_idx integer
---@param key_idx integer
---@param stream Resource
function Animation.audio_track_set_key_stream(track_idx, key_idx, stream) end

---@param track_idx integer
---@param key_idx integer
---@param offset number
function Animation.audio_track_set_key_start_offset(track_idx, key_idx, offset) end

---@param track_idx integer
---@param key_idx integer
---@param offset number
function Animation.audio_track_set_key_end_offset(track_idx, key_idx, offset) end

---@param track_idx integer
---@param key_idx integer
---@return Resource
function Animation.audio_track_get_key_stream(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return number
function Animation.audio_track_get_key_start_offset(track_idx, key_idx) end

---@param track_idx integer
---@param key_idx integer
---@return number
function Animation.audio_track_get_key_end_offset(track_idx, key_idx) end

---@param track_idx integer
---@param enable boolean
function Animation.audio_track_set_use_blend(track_idx, enable) end

---@param track_idx integer
---@return boolean
function Animation.audio_track_is_use_blend(track_idx) end

---@param track_idx integer
---@param time number
---@param animation string
---@return integer
function Animation.animation_track_insert_key(track_idx, time, animation) end

---@param track_idx integer
---@param key_idx integer
---@param animation string
function Animation.animation_track_set_key_animation(track_idx, key_idx, animation) end

---@param track_idx integer
---@param key_idx integer
---@return string
function Animation.animation_track_get_key_animation(track_idx, key_idx) end

---@param name string
---@param time number
function Animation.add_marker(name, time) end

---@param name string
function Animation.remove_marker(name) end

---@param name string
---@return boolean
function Animation.has_marker(name) end

---@param time number
---@return string
function Animation.get_marker_at_time(time) end

---@param time number
---@return string
function Animation.get_next_marker(time) end

---@param time number
---@return string
function Animation.get_prev_marker(time) end

---@param name string
---@return number
function Animation.get_marker_time(name) end

---@return PackedStringArray
function Animation.get_marker_names() end

---@param name string
---@return Color
function Animation.get_marker_color(name) end

---@param name string
---@param color Color
function Animation.set_marker_color(name, color) end

---@param time_sec number
function Animation.set_length(time_sec) end

---@return number
function Animation.get_length() end

---@param loop_mode Animation.LoopMode
function Animation.set_loop_mode(loop_mode) end

---@return Animation.LoopMode
function Animation.get_loop_mode() end

---@param size_sec number
function Animation.set_step(size_sec) end

---@return number
function Animation.get_step() end

function Animation.clear() end

---@param track_idx integer
---@param to_animation Animation
function Animation.copy_track(track_idx, to_animation) end

---@param allowed_velocity_err number?  # Default = 0.01
---@param allowed_angular_err number?  # Default = 0.01
---@param precision integer?  # Default = 3
function Animation.optimize(allowed_velocity_err, allowed_angular_err, precision) end

---@param page_size integer?  # Default = 8192
---@param fps integer?  # Default = 120
---@param split_tolerance number?  # Default = 4.0
function Animation.compress(page_size, fps, split_tolerance) end

---@return boolean
function Animation.is_capture_included() end
