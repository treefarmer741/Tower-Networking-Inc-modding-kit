---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPlaybackPolyphonic : AudioStreamPlayback
local AudioStreamPlaybackPolyphonic = {}

---@param stream AudioStream
---@param from_offset number?  # Default = 0
---@param volume_db number?  # Default = 0
---@param pitch_scale number?  # Default = 1.0
---@param playback_type AudioServer.PlaybackType?  # Default = 0
---@param bus string?  # Default = Master
---@return integer
function AudioStreamPlaybackPolyphonic.play_stream(stream, from_offset, volume_db, pitch_scale, playback_type, bus) end

---@param stream integer
---@param volume_db number
function AudioStreamPlaybackPolyphonic.set_stream_volume(stream, volume_db) end

---@param stream integer
---@param pitch_scale number
function AudioStreamPlaybackPolyphonic.set_stream_pitch_scale(stream, pitch_scale) end

---@param stream integer
---@return boolean
function AudioStreamPlaybackPolyphonic.is_stream_playing(stream) end

---@param stream integer
function AudioStreamPlaybackPolyphonic.stop_stream(stream) end
