---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPlayer2D : Node2D
---@field stream AudioStream
---@field volume_db number
---@field volume_linear number
---@field pitch_scale number
---@field playing boolean
---@field autoplay boolean
---@field stream_paused boolean
---@field max_distance number
---@field attenuation number
---@field max_polyphony integer
---@field panning_strength number
---@field bus string
---@field area_mask integer
---@field playback_type integer
local AudioStreamPlayer2D = {}

---@param stream AudioStream
function AudioStreamPlayer2D.set_stream(stream) end

---@return AudioStream
function AudioStreamPlayer2D.get_stream() end

---@param volume_db number
function AudioStreamPlayer2D.set_volume_db(volume_db) end

---@return number
function AudioStreamPlayer2D.get_volume_db() end

---@param volume_linear number
function AudioStreamPlayer2D.set_volume_linear(volume_linear) end

---@return number
function AudioStreamPlayer2D.get_volume_linear() end

---@param pitch_scale number
function AudioStreamPlayer2D.set_pitch_scale(pitch_scale) end

---@return number
function AudioStreamPlayer2D.get_pitch_scale() end

---@param from_position number?  # Default = 0.0
function AudioStreamPlayer2D.play(from_position) end

---@param to_position number
function AudioStreamPlayer2D.seek(to_position) end

function AudioStreamPlayer2D.stop() end

---@return boolean
function AudioStreamPlayer2D.is_playing() end

---@return number
function AudioStreamPlayer2D.get_playback_position() end

---@param bus string
function AudioStreamPlayer2D.set_bus(bus) end

---@return string
function AudioStreamPlayer2D.get_bus() end

---@param enable boolean
function AudioStreamPlayer2D.set_autoplay(enable) end

---@return boolean
function AudioStreamPlayer2D.is_autoplay_enabled() end

---@param enable boolean
function AudioStreamPlayer2D.set_playing(enable) end

---@param pixels number
function AudioStreamPlayer2D.set_max_distance(pixels) end

---@return number
function AudioStreamPlayer2D.get_max_distance() end

---@param curve number
function AudioStreamPlayer2D.set_attenuation(curve) end

---@return number
function AudioStreamPlayer2D.get_attenuation() end

---@param mask integer
function AudioStreamPlayer2D.set_area_mask(mask) end

---@return integer
function AudioStreamPlayer2D.get_area_mask() end

---@param pause boolean
function AudioStreamPlayer2D.set_stream_paused(pause) end

---@return boolean
function AudioStreamPlayer2D.get_stream_paused() end

---@param max_polyphony integer
function AudioStreamPlayer2D.set_max_polyphony(max_polyphony) end

---@return integer
function AudioStreamPlayer2D.get_max_polyphony() end

---@param panning_strength number
function AudioStreamPlayer2D.set_panning_strength(panning_strength) end

---@return number
function AudioStreamPlayer2D.get_panning_strength() end

---@return boolean
function AudioStreamPlayer2D.has_stream_playback() end

---@return AudioStreamPlayback
function AudioStreamPlayer2D.get_stream_playback() end

---@param playback_type AudioServer.PlaybackType
function AudioStreamPlayer2D.set_playback_type(playback_type) end

---@return AudioServer.PlaybackType
function AudioStreamPlayer2D.get_playback_type() end
