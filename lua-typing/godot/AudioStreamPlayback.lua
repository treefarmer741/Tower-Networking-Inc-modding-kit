---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPlayback : RefCounted
local AudioStreamPlayback = {}

---@param playback_sample AudioSamplePlayback
function AudioStreamPlayback.set_sample_playback(playback_sample) end

---@return AudioSamplePlayback
function AudioStreamPlayback.get_sample_playback() end

---@param rate_scale number
---@param frames integer
---@return PackedVector2Array
function AudioStreamPlayback.mix_audio(rate_scale, frames) end

---@param from_pos number?  # Default = 0.0
function AudioStreamPlayback.start(from_pos) end

---@param time number?  # Default = 0.0
function AudioStreamPlayback.seek(time) end

function AudioStreamPlayback.stop() end

---@return integer
function AudioStreamPlayback.get_loop_count() end

---@return number
function AudioStreamPlayback.get_playback_position() end

---@return boolean
function AudioStreamPlayback.is_playing() end
