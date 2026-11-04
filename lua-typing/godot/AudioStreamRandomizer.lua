---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamRandomizer : AudioStream
---@field playback_mode integer
---@field random_pitch number
---@field random_volume_offset_db number
---@field streams stream_
---@field streams_count integer
local AudioStreamRandomizer = {}

---@param index integer
---@param stream AudioStream
---@param weight number?  # Default = 1.0
function AudioStreamRandomizer.add_stream(index, stream, weight) end

---@param index_from integer
---@param index_to integer
function AudioStreamRandomizer.move_stream(index_from, index_to) end

---@param index integer
function AudioStreamRandomizer.remove_stream(index) end

---@param index integer
---@param stream AudioStream
function AudioStreamRandomizer.set_stream(index, stream) end

---@param index integer
---@return AudioStream
function AudioStreamRandomizer.get_stream(index) end

---@param index integer
---@param weight number
function AudioStreamRandomizer.set_stream_probability_weight(index, weight) end

---@param index integer
---@return number
function AudioStreamRandomizer.get_stream_probability_weight(index) end

---@param count integer
function AudioStreamRandomizer.set_streams_count(count) end

---@return integer
function AudioStreamRandomizer.get_streams_count() end

---@param scale number
function AudioStreamRandomizer.set_random_pitch(scale) end

---@return number
function AudioStreamRandomizer.get_random_pitch() end

---@param db_offset number
function AudioStreamRandomizer.set_random_volume_offset_db(db_offset) end

---@return number
function AudioStreamRandomizer.get_random_volume_offset_db() end

---@param mode AudioStreamRandomizer.PlaybackMode
function AudioStreamRandomizer.set_playback_mode(mode) end

---@return AudioStreamRandomizer.PlaybackMode
function AudioStreamRandomizer.get_playback_mode() end
