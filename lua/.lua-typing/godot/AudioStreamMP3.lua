---@meta _
-- Generated API for game version 0.9.1

---@class AudioStreamMP3 : AudioStream
---@field data PackedByteArray
---@field bpm number
---@field beat_count integer
---@field bar_beats integer
---@field loop boolean
---@field loop_offset number
local AudioStreamMP3 = {}

---@param stream_data PackedByteArray
---@return AudioStreamMP3
function AudioStreamMP3.load_from_buffer(stream_data) end

---@param path string
---@return AudioStreamMP3
function AudioStreamMP3.load_from_file(path) end

---@param data PackedByteArray
function AudioStreamMP3.set_data(data) end

---@return PackedByteArray
function AudioStreamMP3.get_data() end

---@param enable boolean
function AudioStreamMP3.set_loop(enable) end

---@return boolean
function AudioStreamMP3.has_loop() end

---@param seconds number
function AudioStreamMP3.set_loop_offset(seconds) end

---@return number
function AudioStreamMP3.get_loop_offset() end

---@param bpm number
function AudioStreamMP3.set_bpm(bpm) end

---@return number
function AudioStreamMP3.get_bpm() end

---@param count integer
function AudioStreamMP3.set_beat_count(count) end

---@return integer
function AudioStreamMP3.get_beat_count() end

---@param count integer
function AudioStreamMP3.set_bar_beats(count) end

---@return integer
function AudioStreamMP3.get_bar_beats() end
