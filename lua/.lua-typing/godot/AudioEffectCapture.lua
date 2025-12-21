---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectCapture : AudioEffect
---@field buffer_length number
local AudioEffectCapture = {}

---@param frames integer
---@return boolean
function AudioEffectCapture.can_get_buffer(frames) end

---@param frames integer
---@return PackedVector2Array
function AudioEffectCapture.get_buffer(frames) end

function AudioEffectCapture.clear_buffer() end

---@param buffer_length_seconds number
function AudioEffectCapture.set_buffer_length(buffer_length_seconds) end

---@return number
function AudioEffectCapture.get_buffer_length() end

---@return integer
function AudioEffectCapture.get_frames_available() end

---@return integer
function AudioEffectCapture.get_discarded_frames() end

---@return integer
function AudioEffectCapture.get_buffer_length_frames() end

---@return integer
function AudioEffectCapture.get_pushed_frames() end
