---@meta _
-- Generated API for game version 0.9.1

---@class AudioStreamPlayer : Node
---@field stream AudioStream
---@field volume_db number
---@field volume_linear number
---@field pitch_scale number
---@field playing boolean
---@field autoplay boolean
---@field stream_paused boolean
---@field mix_target integer
---@field max_polyphony integer
---@field bus string
---@field playback_type integer
local AudioStreamPlayer = {}

---@param stream AudioStream
function AudioStreamPlayer.set_stream(stream) end

---@return AudioStream
function AudioStreamPlayer.get_stream() end

---@param volume_db number
function AudioStreamPlayer.set_volume_db(volume_db) end

---@return number
function AudioStreamPlayer.get_volume_db() end

---@param volume_linear number
function AudioStreamPlayer.set_volume_linear(volume_linear) end

---@return number
function AudioStreamPlayer.get_volume_linear() end

---@param pitch_scale number
function AudioStreamPlayer.set_pitch_scale(pitch_scale) end

---@return number
function AudioStreamPlayer.get_pitch_scale() end

---@param from_position number?  # Default = 0.0
function AudioStreamPlayer.play(from_position) end

---@param to_position number
function AudioStreamPlayer.seek(to_position) end

function AudioStreamPlayer.stop() end

---@return boolean
function AudioStreamPlayer.is_playing() end

---@return number
function AudioStreamPlayer.get_playback_position() end

---@param bus string
function AudioStreamPlayer.set_bus(bus) end

---@return string
function AudioStreamPlayer.get_bus() end

---@param enable boolean
function AudioStreamPlayer.set_autoplay(enable) end

---@return boolean
function AudioStreamPlayer.is_autoplay_enabled() end

---@param mix_target AudioStreamPlayer.MixTarget
function AudioStreamPlayer.set_mix_target(mix_target) end

---@return AudioStreamPlayer.MixTarget
function AudioStreamPlayer.get_mix_target() end

---@param enable boolean
function AudioStreamPlayer.set_playing(enable) end

---@param pause boolean
function AudioStreamPlayer.set_stream_paused(pause) end

---@return boolean
function AudioStreamPlayer.get_stream_paused() end

---@param max_polyphony integer
function AudioStreamPlayer.set_max_polyphony(max_polyphony) end

---@return integer
function AudioStreamPlayer.get_max_polyphony() end

---@return boolean
function AudioStreamPlayer.has_stream_playback() end

---@return AudioStreamPlayback
function AudioStreamPlayer.get_stream_playback() end

---@param playback_type AudioServer.PlaybackType
function AudioStreamPlayer.set_playback_type(playback_type) end

---@return AudioServer.PlaybackType
function AudioStreamPlayer.get_playback_type() end
