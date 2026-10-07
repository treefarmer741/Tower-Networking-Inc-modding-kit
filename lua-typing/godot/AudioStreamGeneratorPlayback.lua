---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamGeneratorPlayback : AudioStreamPlaybackResampled
local AudioStreamGeneratorPlayback = {}

---@param frame Vector2
---@return boolean
function AudioStreamGeneratorPlayback.push_frame(frame) end

---@param amount integer
---@return boolean
function AudioStreamGeneratorPlayback.can_push_buffer(amount) end

---@param frames PackedVector2Array
---@return boolean
function AudioStreamGeneratorPlayback.push_buffer(frames) end

---@return integer
function AudioStreamGeneratorPlayback.get_frames_available() end

---@return integer
function AudioStreamGeneratorPlayback.get_skips() end

function AudioStreamGeneratorPlayback.clear_buffer() end
