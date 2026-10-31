---@meta _
-- Generated API for game version 0.10.0

---@class AudioStream : Resource
local AudioStream = {}

---@return number
function AudioStream.get_length() end

---@return boolean
function AudioStream.is_monophonic() end

---@return AudioStreamPlayback
function AudioStream.instantiate_playback() end

---@return boolean
function AudioStream.can_be_sampled() end

---@return AudioSample
function AudioStream.generate_sample() end

---@return boolean
function AudioStream.is_meta_stream() end
