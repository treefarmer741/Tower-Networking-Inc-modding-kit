---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPlayer3D : Node3D
---@field stream AudioStream
---@field attenuation_model integer
---@field volume_db number
---@field volume_linear number
---@field unit_size number
---@field max_db number
---@field pitch_scale number
---@field playing boolean
---@field autoplay boolean
---@field stream_paused boolean
---@field max_distance number
---@field max_polyphony integer
---@field panning_strength number
---@field bus string
---@field area_mask integer
---@field playback_type integer
---@field emission_angle_enabled boolean
---@field emission_angle_degrees number
---@field emission_angle_filter_attenuation_db number
---@field attenuation_filter_cutoff_hz number
---@field attenuation_filter_db number
---@field doppler_tracking integer
local AudioStreamPlayer3D = {}

---@param stream AudioStream
function AudioStreamPlayer3D.set_stream(stream) end

---@return AudioStream
function AudioStreamPlayer3D.get_stream() end

---@param volume_db number
function AudioStreamPlayer3D.set_volume_db(volume_db) end

---@return number
function AudioStreamPlayer3D.get_volume_db() end

---@param volume_linear number
function AudioStreamPlayer3D.set_volume_linear(volume_linear) end

---@return number
function AudioStreamPlayer3D.get_volume_linear() end

---@param unit_size number
function AudioStreamPlayer3D.set_unit_size(unit_size) end

---@return number
function AudioStreamPlayer3D.get_unit_size() end

---@param max_db number
function AudioStreamPlayer3D.set_max_db(max_db) end

---@return number
function AudioStreamPlayer3D.get_max_db() end

---@param pitch_scale number
function AudioStreamPlayer3D.set_pitch_scale(pitch_scale) end

---@return number
function AudioStreamPlayer3D.get_pitch_scale() end

---@param from_position number?  # Default = 0.0
function AudioStreamPlayer3D.play(from_position) end

---@param to_position number
function AudioStreamPlayer3D.seek(to_position) end

function AudioStreamPlayer3D.stop() end

---@return boolean
function AudioStreamPlayer3D.is_playing() end

---@return number
function AudioStreamPlayer3D.get_playback_position() end

---@param bus string
function AudioStreamPlayer3D.set_bus(bus) end

---@return string
function AudioStreamPlayer3D.get_bus() end

---@param enable boolean
function AudioStreamPlayer3D.set_autoplay(enable) end

---@return boolean
function AudioStreamPlayer3D.is_autoplay_enabled() end

---@param enable boolean
function AudioStreamPlayer3D.set_playing(enable) end

---@param meters number
function AudioStreamPlayer3D.set_max_distance(meters) end

---@return number
function AudioStreamPlayer3D.get_max_distance() end

---@param mask integer
function AudioStreamPlayer3D.set_area_mask(mask) end

---@return integer
function AudioStreamPlayer3D.get_area_mask() end

---@param degrees number
function AudioStreamPlayer3D.set_emission_angle(degrees) end

---@return number
function AudioStreamPlayer3D.get_emission_angle() end

---@param enabled boolean
function AudioStreamPlayer3D.set_emission_angle_enabled(enabled) end

---@return boolean
function AudioStreamPlayer3D.is_emission_angle_enabled() end

---@param db number
function AudioStreamPlayer3D.set_emission_angle_filter_attenuation_db(db) end

---@return number
function AudioStreamPlayer3D.get_emission_angle_filter_attenuation_db() end

---@param degrees number
function AudioStreamPlayer3D.set_attenuation_filter_cutoff_hz(degrees) end

---@return number
function AudioStreamPlayer3D.get_attenuation_filter_cutoff_hz() end

---@param db number
function AudioStreamPlayer3D.set_attenuation_filter_db(db) end

---@return number
function AudioStreamPlayer3D.get_attenuation_filter_db() end

---@param model AudioStreamPlayer3D.AttenuationModel
function AudioStreamPlayer3D.set_attenuation_model(model) end

---@return AudioStreamPlayer3D.AttenuationModel
function AudioStreamPlayer3D.get_attenuation_model() end

---@param mode AudioStreamPlayer3D.DopplerTracking
function AudioStreamPlayer3D.set_doppler_tracking(mode) end

---@return AudioStreamPlayer3D.DopplerTracking
function AudioStreamPlayer3D.get_doppler_tracking() end

---@param pause boolean
function AudioStreamPlayer3D.set_stream_paused(pause) end

---@return boolean
function AudioStreamPlayer3D.get_stream_paused() end

---@param max_polyphony integer
function AudioStreamPlayer3D.set_max_polyphony(max_polyphony) end

---@return integer
function AudioStreamPlayer3D.get_max_polyphony() end

---@param panning_strength number
function AudioStreamPlayer3D.set_panning_strength(panning_strength) end

---@return number
function AudioStreamPlayer3D.get_panning_strength() end

---@return boolean
function AudioStreamPlayer3D.has_stream_playback() end

---@return AudioStreamPlayback
function AudioStreamPlayer3D.get_stream_playback() end

---@param playback_type AudioServer.PlaybackType
function AudioStreamPlayer3D.set_playback_type(playback_type) end

---@return AudioServer.PlaybackType
function AudioStreamPlayer3D.get_playback_type() end
